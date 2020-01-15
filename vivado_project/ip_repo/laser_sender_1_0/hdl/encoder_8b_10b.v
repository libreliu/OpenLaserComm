module encoder_8b_10b(
    input rd,      // 0 means -1, 1 means +1
    input [7:0] data,
    input use_alt, // decode D.x.A7 instead of D.x.P7
    output reg [5:0] code6,
    output reg [3:0] code4
);

    wire [4:0] data_5;
    wire [2:0] data_3;

    assign data_5 = data[7:3];  // EDBCA
    assign data_3 = data[2:0];                    // HGF

    // bytes are sent low to high: abcdei fghj
    // only data bits are encoded, K bits needed to treat separately
    always @ (*) begin
        case (data_5)     //     RD = +1 |  RD = -1 
            5'd0: code6 = rd ? 6'b011000 : 6'b100111;   // abcdei
            5'd1: code6 = rd ? 6'b100010 : 6'b011101;
            5'd2: code6 = rd ? 6'b010010 : 6'b101101;
            5'd3: code6 = 6'b110001;
            5'd4: code6 = rd ? 6'b001010 : 6'b110101;
            5'd5: code6 = 6'b101001;
            5'd6: code6 = 6'b011001;
            5'd7: code6 = rd ? 6'b000111 : 6'b111000;
            5'd8: code6 = rd ? 6'b000110 : 6'b111001;
            5'd9: code6 = 6'b100101;
            5'd10: code6 = 6'b010101;
            5'd11: code6 = 6'b110100;
            5'd12: code6 = 6'b001101;
            5'd13: code6 = 6'b101100;
            5'd14: code6 = 6'b011100;
            5'd15: code6 = rd ? 6'b101000 : 6'b010111;
            5'd16: code6 = rd ? 6'b100100 : 6'b011011;
            5'd17: code6 = 6'b100011;
            5'd18: code6 = 6'b010011;
            5'd19: code6 = 6'b110010;
            5'd20: code6 = 6'b001011;
            5'd21: code6 = 6'b101010;
            5'd22: code6 = 6'b011010;
            5'd23: code6 = rd ? 6'b000101 : 6'b111010;
            5'd24: code6 = rd ? 6'b001100 : 6'b110011;
            5'd25: code6 = 6'b100110;
            5'd26: code6 = 6'b010110;
            5'd27: code6 = rd ? 6'b001001 : 6'b110110;
            5'd28: code6 = 6'b001110;
            5'd29: code6 = rd ? 6'b010001 : 6'b101110;
            5'd30: code6 = rd ? 6'b100001 : 6'b011110;
            5'd31: code6 = rd ? 6'b010100 : 6'b101011;
            
            default: code6 = 6'd0;  // this should never happen

        endcase
        
        case (data_3)     //    RD = +1 | RD = -1
            3'd0: code4 = rd ? 4'b0100 : 4'b1011;       // fghj
            3'd1: code4 = 4'b1001;
            3'd2: code4 = 4'b0101;
            3'd3: code4 = rd ? 4'b0011 : 4'b1100;
            3'd4: code4 = rd ? 4'b0010 : 4'b1101;
            3'd5: code4 = 4'b1010;
            3'd6: code4 = 4'b0110;
            3'd7: code4 = use_alt ? (rd ? 4'b0001 : 4'b1110) 
                                  : (rd ? 4'b1000 : 4'b0111);

            default: code4 = 4'd0;  // this should never happen
        endcase
    end

endmodule