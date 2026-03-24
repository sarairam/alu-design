module alu(
    input [7:0] A,
    input [7:0] B,
    input [2:0] sel,
    output reg [7:0] result,
    output reg carry
);

always @(*) begin
    carry = 0;   // IMPORTANT FIX

    case(sel)
        3'b000: {carry, result} = A + B;  // ADD
        3'b001: {carry, result} = A - B;  // SUB
        3'b010: result = A & B;           // AND
        3'b011: result = A | B;           // OR
        3'b100: result = A ^ B;           // XOR
        default: result = 8'b00000000;
    endcase
end

endmodule