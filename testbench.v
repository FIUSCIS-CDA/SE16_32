module testbench();

reg[15:0] A;

wire[31:0] S;

SE16_32 mySE(A, S);

initial begin
A=3782;   #10; 
if (S !== A) begin
           $display("Error with A=%d: Should also be %d but got %d", A, A, S); $stop;
end
A=-43;  #10;
if ($signed(S) !== $signed(A)) begin
   $display("Error with A=%d: Should also be %d but got %d", $signed(A), $signed(A), $signed(S)); $stop;
end
$display("All tests passed.");
end

endmodule
