
`timescale 1 ns / 1 ps

	module laser_sender_v1_0 //#
//	(
//		// Users to add parameters here

//		// User parameters ends
//		// Do not modify the parameters beyond this line


//		// Parameters of Axi Slave Bus Interface S_AXIS
//	)
	(
		// Users to add ports here
		output reg sig,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXIS
		input wire  s_axis_aclk,
		input wire  s_axis_aresetn,
		output wire  s_axis_tready,
		input wire [7 : 0] s_axis_tdata,
		input wire [0 : 0] s_axis_tkeep,
		input wire  s_axis_tlast,
		input wire  s_axis_tvalid
	);
// Instantiation of Axi Bus Interface S_AXIS
//	laser_sender_v1_0_S_AXIS # ( 
//	) laser_sender_v1_0_S_AXIS_inst (
//		.S_AXIS_ACLK(s_axis_aclk),
//		.S_AXIS_ARESETN(s_axis_aresetn),
//		.S_AXIS_TREADY(s_axis_tready),
//		.S_AXIS_TDATA(s_axis_tdata),
//		.S_AXIS_TSTRB(s_axis_tstrb),
//		.S_AXIS_TLAST(s_axis_tlast),
//		.S_AXIS_TVALID(s_axis_tvalid)
//	);

	// state == 1: data is valid to be send
	// state == 0: data invalid, send K28.7(IDLE) instead
	reg state, rd;
	reg [3:0] b10; // 0~
	reg [7:0] data;
	wire [5:0] code6;
	wire [3:0] code4;
	wire nextrd;  // 0 == -1, 1 == +1
	
	assign s_axis_tready = b10==0/*|state==0*/;

	// assign code6=
	// (state==0)?{6{rd}}^6'b001111:
	// //more
	// 6'b000000;
	
	// assign code4=
	// (state==0)?{4{rd}}^4'b1100:
	// //more
	// 4'b0000;

	// --- code6 and code4 processing ---
	reg use_alt;
	wire [5:0] code6_data;
	wire [3:0] code4_data;

	always @ (posedge s_axis_aclk) begin
		if (b10 == 8) begin // somewhere in code6
			if (rd == 0) begin // rd == -1
				if (   ({data[4], data[3], data[2], data[1], data[0]} == 5'd17)
					|| ({data[4], data[3], data[2], data[1], data[0]} == 5'd18)
					|| ({data[4], data[3], data[2], data[1], data[0]} == 5'd20) )
					use_alt <= 1;
				else
					use_alt <= 0;
			end else begin     // rd == +1
				if (   ({data[4], data[3], data[2], data[1], data[0]} == 5'd11)
					|| ({data[4], data[3], data[2], data[1], data[0]} == 5'd13)
					|| ({data[4], data[3], data[2], data[1], data[0]} == 5'd14) )
					use_alt <= 1;
				else
					use_alt <= 0;
			end
		end
	end

	encoder_8b_10b enc_inst(.rd(rd), .data(data), .use_alt(use_alt), .code6(code6_data), .code4(code4_data));
	assign code6 = (state == 0) ? ({ 6{rd} }^6'b001111) : code6_data; // when idle, send K.28.1
	assign code4 = (state == 0) ? ({ 4{rd} }^4'b0110) : code4_data;

	// ----------------------------------

	// The next RD value chosen, this is needed after code6 emitted & after code4 emitted
	// When code6 have even 1's, RD flipping required (eg 110000)
	// When code6 have odd 1's, number of 1 == number of 0, so no RD flipping required
	// XOR each bit in code6 yields 1 in odd 1, so ^~code6 is 1 in even1
	// 1 XOR T == ~T, so (^~code6 ^ rd) generates new rd in code6
	// b10 is a counter from 9(1001) to 5(0101) to 4(0100) to 0(0000), and 
	assign nextrd = (b10 >= 4) ? ((^~code6)^rd) : ((^code4)^rd);
	
	always @ (posedge s_axis_aclk)
	begin
	   if(!s_axis_aresetn)
	       state<=0;
		else case(state)
			0://idle
				if(s_axis_tready&&s_axis_tvalid)
					state<=1;
				else
					state<=0;
			1://work
				if(s_axis_tready&&!s_axis_tvalid)
					state<=0;
				else
					state<=1;
		endcase
	end
	
	always @ (posedge s_axis_aclk)
	begin
	   if(!s_axis_aresetn)
	       data<=0;
	   else if(s_axis_tready&&s_axis_tvalid)
	       data<=s_axis_tdata;
	   else 
	       data<=data;
	end
	
	always @ (posedge s_axis_aclk)
	begin
	   if(!s_axis_aresetn)
	       b10<=0;
	   else if(b10==0)
	       b10<=9;
	   else
	       b10<=b10-1;
	end
	
	always @ (posedge s_axis_aclk)
	begin
	   case(b10)
	   0:
	       sig<=code4[0];
	   1:
	       sig<=code4[1];
	   2:
	       sig<=code4[2];
	   3:
	       sig<=code4[3];
	   4:
	       sig<=code6[0];
	   5:
	       sig<=code6[1];
	   6:
	       sig<=code6[2];
	   7:
	       sig<=code6[3];
	   8:
	       sig<=code6[4];
	   9:
	       sig<=code6[5];
	   default:
	       sig<=0;
	   endcase
	end
	
	always @ (posedge s_axis_aclk)
	begin
	   if(!s_axis_aresetn)
	       rd <= 0;
	   else if (b10 == 0 || b10 == 4)
	       rd <= nextrd;
	   else
	       rd <= rd;
	end
	
	

	// User logic ends

	endmodule
