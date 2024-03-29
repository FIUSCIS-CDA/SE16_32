///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: SE16_32
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbench();
`include "../Test/Test.v"
///////////////////////////////////////////////////////////////////////////////////
// Input: A (16-bit)
reg[15:0] A;
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
// Output: Y (32-bit)
wire[31:0] Y;
///////////////////////////////////////////////////////////////////////////////////

SE16_32 mySE(.A(A), .Y(Y));

initial begin
////////////////////////////////////////////////////////////////////////////////////////
// Test: Positive A
$display("Testing positive A=3782");
A=3782;   #10; 
verifyEqual32(Y, A);
////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
// Test: Negative A
$display("Testing negative A=-43");
A=-43;  #10;
verifyEqual($signed(Y), $signed(A));
////////////////////////////////////////////////////////////////////////////////////////

$display("All tests passed.");
end

endmodule
