//`include "nand_64_2.v"
//`include "dff63_0.v"
//`include "fat_tree.v"
module adc_digi_top (qout,qout_b, eout,clk);
   input [31:0] qout;
      input [31:0] qout_b;
   input 	   clk;
   output [5:0]  eout;
   wire [63:0]	 a;
   wire [63:0]	 b;
   
   
   nand_64_2 nand_64(.qout(qout), .qout_b(qout_b), .nand_out(a));
   dff63_0 dff63_0(.d(a),.clk(clk), .q(b));
   fat_tree fat_tree(.in(b), .eout(eout));
   

   
endmodule
