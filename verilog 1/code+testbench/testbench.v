module testbench();
   reg A, B;
   wire Y;

   // Instantiate the DUT (Device Under Test)
   gate dut (
       .A(A),
       .B(B),
       .Y(Y)
   );

   // Testbench procedure
   initial begin
     A <= 1'b0;
     B <= 1'b0;
     #100;

     A <= 1'b0;
     B <= 1'b1;
     #100;

     A <= 1'b1;
     B <= 1'b0;
     #100;

     A <= 1'b1;
     B <= 1'b1;
     #100;
   end

   // VCD Dump
   initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);
   end
endmodule
