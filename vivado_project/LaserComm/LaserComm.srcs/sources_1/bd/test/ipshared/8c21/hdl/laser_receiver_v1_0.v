
`timescale 1 ns / 1 ps

	module laser_receiver_v1_0 #
	(
		// Users to add parameters here
        parameter integer FIFO_LENGTH = 8
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M_AXIS
//		parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
//		parameter integer C_M_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
		input wire sig,
		output reg state,
		

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M_AXIS
		input wire  m_axis_aclk,
		input wire  m_axis_aresetn,
		output wire  m_axis_tvalid,
		output wire [7 : 0] m_axis_tdata,
		output wire [0 : 0] m_axis_tkeep,
		output wire  m_axis_tlast,
		input wire  m_axis_tready
	);
// Instantiation of Axi Bus Interface M_AXIS
//	laser_receiver_v1_0_M_AXIS # ( 
//		.C_M_AXIS_TDATA_WIDTH(C_M_AXIS_TDATA_WIDTH),
//		.C_M_START_COUNT(C_M_AXIS_START_COUNT)
//	) laser_receiver_v1_0_M_AXIS_inst (
//		.M_AXIS_ACLK(m_axis_aclk),
//		.M_AXIS_ARESETN(m_axis_aresetn),
//		.M_AXIS_TVALID(m_axis_tvalid),
//		.M_AXIS_TDATA(m_axis_tdata),
//		.M_AXIS_TSTRB(m_axis_tstrb),
//		.M_AXIS_TLAST(m_axis_tlast),
//		.M_AXIS_TREADY(m_axis_tready)
//	);

	// Add user logic here
	wire [7:0] data;
	wire sync,invalidcode;
	reg errstate;
	wire rdok,rderr;
	reg rderr_6b;
	reg [1:0] misscnt;
	reg [3:0] rdcnt;
	reg [3:0] bitcnt;
	reg [9:0] code;
	
	wire fifoempty,fifofull,fifoin;
	assign m_axis_tvalid=~fifoempty;
	assign m_axis_tkeep=1;
	assign m_axis_tlast=1;
	assign fifoin=state && bitcnt==9 && !rderr && !rderr_6b && !fifofull && !invalidcode && !sync;
    FIFO #(.DEPTH(7),.WIDTH(8))
        fifo(.clk(m_axis_aclk),.rstn(m_axis_aresetn),.in(fifoin),.out(m_axis_tready&m_axis_tvalid),.din(data),.empty(fifoempty),.full(fifofull),.dout(m_axis_tdata));
    
    decoder_8b_10b
        decoder(.code10(code),.data(data),.is_k28_1(sync),.code_invalid(invalidcode));
    
    //state
    always @(posedge m_axis_aclk)
    begin
        if(!m_axis_aresetn) state<=0;
        else case(state)
        0://sync
            if(sync) state<=1;
            else state<=0;
        1://decode
            if(misscnt==3) state<=0;
            else state<=1;
        endcase
    end
    
    
    //8b10b code input
    always @(posedge m_axis_aclk)
    begin
        if(!m_axis_aresetn) code<=0;
        else code<={code[8:0],sig};
    end
    
    assign rdok=(bitcnt==9 || bitcnt==5) && errstate && (rdcnt==14 || rdcnt==2);
    assign rderr=(bitcnt==9 || bitcnt==5) && !errstate && (rdcnt!=15 && rdcnt!=1);
    //count disparity of 1 and 0
    always @(posedge m_axis_aclk)
    begin
        if(!m_axis_aresetn) rdcnt<=0;
        else if(state==0 && sync) rdcnt<=(code[4]?4'd1:4'd15) + (sig?4'd1:4'd15);
        else if(rderr) rdcnt<=sig?4'd1:4'd15;
        else if(rdok) rdcnt <= (rdcnt==2?4'd1:4'd15) + (sig?4'd1:4'd15);
        else case(sig)
        0:
            if(rdcnt!=8) rdcnt<=rdcnt-1;
            else rdcnt<=rdcnt;
        1:
            if(rdcnt!=7) rdcnt<=rdcnt+1;
            else rdcnt<=rdcnt;
        endcase
    end
    
    //errstate==1 indicates a error
    always @(posedge m_axis_aclk)
    begin
        if(!m_axis_aresetn) errstate<=0;
        else case(state)
        0://sync
            if(sync) errstate<=0;
            else errstate<=1;
        1://decode
            if(errstate)//error
                if(rdok) errstate<=0;
                else errstate<=1;
            else//no error
                if(rderr)
                    errstate<=1;
                else
                    errstate<=0;
        endcase
    end
    
    always @(posedge m_axis_aclk)
    begin
        if(!m_axis_aresetn) rderr_6b<=0;
        else case(state)
        0://sync
            rderr_6b<=0;
        1://decode
            if(bitcnt==9)
                rderr_6b<=0;
            else if(rderr) 
                rderr_6b<=1;
            else
                rderr_6b<=rderr_6b;
        endcase
    end
    
    //number of bit readed, when bitcnt==9, code stores a complete 8b10b code
    always @(posedge m_axis_aclk)
    begin
        if(!m_axis_aresetn) bitcnt<=0;
        else case(state)
        0:
            bitcnt<=0;
        1:
            if(bitcnt==9) bitcnt<=0;
            else bitcnt<=bitcnt+1;
        endcase
    end
    
    //count of rdmiss
    always @(posedge m_axis_aclk)
    begin
        if(!m_axis_aresetn) misscnt<=0;
        else case(state)
        0:
            misscnt<=0;
        1:
            if(bitcnt==9)
                if(rderr_6b||errstate) misscnt<=misscnt+1;
                else if(misscnt!=0) misscnt<=misscnt-1;
                else misscnt<=misscnt;
            else misscnt<=misscnt;
        endcase
    end
    
//    always @(posedge m_axis_aclk)
//    begin
//        if(!m_axis_aresetn)
//        else case(state)
//        0:
//        1:
//        endcase
//    end
    
    
    
	// User logic ends

	endmodule
