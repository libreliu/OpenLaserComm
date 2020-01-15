module decoder_8b_10b(
    input [7:0] code10,
    output reg [5:0] data,
    output code_invalid,
    output reg is_k28_7
);

    wire [5:0] code6;
    wire [3:0] code4;

    reg code4_invalid;
    reg code6_invalid;

    assign code_invalid = (code4_invalid || code6_invalid) && !(is_k28_7);

    wire [4:0] data5;
    wire [2:0] data3;

    always @ (*) begin
        case (code6)
            6'b011000: begin data5 = 5'd0;  code6_invalid = 0; end
            6'b100111: begin data5 = 5'd0;  code6_invalid = 0; end
            6'b100010: begin data5 = 5'd1;  code6_invalid = 0; end
            6'b011101: begin data5 = 5'd1;  code6_invalid = 0; end
            6'b010010: begin data5 = 5'd2;  code6_invalid = 0; end
            6'b101101: begin data5 = 5'd2;  code6_invalid = 0; end
            6'b110001: begin data5 = 5'd3;  code6_invalid = 0; end
            6'b001010: begin data5 = 5'd4;  code6_invalid = 0; end
            6'b110101: begin data5 = 5'd4;  code6_invalid = 0; end
            6'b101001: begin data5 = 5'd5;  code6_invalid = 0; end
            6'b011001: begin data5 = 5'd6;  code6_invalid = 0; end
            6'b000111: begin data5 = 5'd7;  code6_invalid = 0; end
            6'b111000: begin data5 = 5'd7;  code6_invalid = 0; end
            6'b000110: begin data5 = 5'd8;  code6_invalid = 0; end
            6'b111001: begin data5 = 5'd8;  code6_invalid = 0; end
            6'b100101: begin data5 = 5'd9;  code6_invalid = 0; end
            6'b010101: begin data5 = 5'd10; code6_invalid = 0; end
            6'b110100: begin data5 = 5'd11; code6_invalid = 0; end
            6'b001101: begin data5 = 5'd12; code6_invalid = 0; end
            6'b101100: begin data5 = 5'd13; code6_invalid = 0; end
            6'b011100: begin data5 = 5'd14; code6_invalid = 0; end
            6'b101000: begin data5 = 5'd15; code6_invalid = 0; end
            6'b010111: begin data5 = 5'd15; code6_invalid = 0; end
            6'b100100: begin data5 = 5'd16; code6_invalid = 0; end
            6'b011011: begin data5 = 5'd16; code6_invalid = 0; end
            6'b100011: begin data5 = 5'd17; code6_invalid = 0; end
            6'b010011: begin data5 = 5'd18; code6_invalid = 0; end
            6'b110010: begin data5 = 5'd19; code6_invalid = 0; end
            6'b001011: begin data5 = 5'd20; code6_invalid = 0; end
            6'b101010: begin data5 = 5'd21; code6_invalid = 0; end
            6'b011010: begin data5 = 5'd22; code6_invalid = 0; end
            6'b000101: begin data5 = 5'd23; code6_invalid = 0; end
            6'b111010: begin data5 = 5'd23; code6_invalid = 0; end
            6'b001100: begin data5 = 5'd24; code6_invalid = 0; end
            6'b110011: begin data5 = 5'd24; code6_invalid = 0; end
            6'b100110: begin data5 = 5'd25; code6_invalid = 0; end
            6'b010110: begin data5 = 5'd26; code6_invalid = 0; end
            6'b001001: begin data5 = 5'd27; code6_invalid = 0; end
            6'b110110: begin data5 = 5'd27; code6_invalid = 0; end
            6'b001110: begin data5 = 5'd28; code6_invalid = 0; end
            6'b010001: begin data5 = 5'd29; code6_invalid = 0; end
            6'b101110: begin data5 = 5'd29; code6_invalid = 0; end
            6'b100001: begin data5 = 5'd30; code6_invalid = 0; end
            6'b011110: begin data5 = 5'd30; code6_invalid = 0; end
            6'b010100: begin data5 = 5'd31; code6_invalid = 0; end
            6'b101011: begin data5 = 5'd31; code6_invalid = 0; end

            default: begin data5 = 5'd0; code6_invalid = 1; end
        endcase

        case (code4)
            4'b0100: begin data3 = 3'd0; code4_invalid = 0; end
            4'b1011: begin data3 = 3'd0; code4_invalid = 0; end
            4'b1001: begin data3 = 3'd1; code4_invalid = 0; end
            4'b0101: begin data3 = 3'd2; code4_invalid = 0; end
            4'b0011: begin data3 = 3'd3; code4_invalid = 0; end
            4'b1100: begin data3 = 3'd3; code4_invalid = 0; end
            4'b0010: begin data3 = 3'd4; code4_invalid = 0; end
            4'b1101: begin data3 = 3'd4; code4_invalid = 0; end
            4'b1010: begin data3 = 3'd5; code4_invalid = 0; end
            4'b0110: begin data3 = 3'd6; code4_invalid = 0; end
            4'b0001: begin data3 = 3'd7; code4_invalid = 0; end
            4'b1110: begin data3 = 3'd7; code4_invalid = 0; end
            4'b1000: begin data3 = 3'd7; code4_invalid = 0; end
            4'b0111: begin data3 = 3'd7; code4_invalid = 0; end

            default: begin data3 = 3'd0; code4_invalid = 1; end
        endcase

        if (data == 10'b001111_1000 || data == 10'b110000_0111)
            is_k28_7 = 1;
        else
            is_k28_7 = 0;
    end

endmodule