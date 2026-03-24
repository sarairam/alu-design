`timescale 1ns / 1ps

module alu_tb;

reg [7:0] A, B;
reg [2:0] sel;
wire [7:0] result;
wire carry;

alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

initial begin

    $monitor("A=%d B=%d sel=%b result=%d carry=%b", A, B, sel, result, carry);

    // ADD
    A = 8'd10; B = 8'd5; sel = 3'b000;
    #10;

    // SUB
    A = 8'd10; B = 8'd3; sel = 3'b001;
    #10;

    // AND
    A = 8'b1100; B = 8'b1010; sel = 3'b010;
    #10;

    // OR
    A = 8'b1100; B = 8'b1010; sel = 3'b011;
    #10;

    // XOR
    A = 8'b1100; B = 8'b1010; sel = 3'b100;
    #10;

    $finish;

end

endmodule