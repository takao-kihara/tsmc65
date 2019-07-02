//`include "nand_nor.v"
//`include "fat16in.v"
//`include "fat64in.v"
//`include "fat_4to1.v"
//`include "nand_nor_2.v"
//`include "fat_8to1.v"
//`include "nor_nand.v"
//`include "fat_32to1.v"
//`include "fat_16to1.v"
module fat_tree (in, eout );
 input [63:0] in;
   output [5:0]  eout;
   wire [31:0] 	 a32;
   wire [15:0] 	 b16;
   wire [7:0] 	 c8;
   wire [3:0] 	 d4;
   wire [1:0] 	 e2;
   

   fat64in fat_64in (.i64(in[63:0]), .a32(a32[31:0]), .b16(b16[15:0]), .c8(c8[7:0]), .d4(d4[3:0]), .e2(e2[1:0]), .f1(eout[5]) );

   fat_32to1 fat_32in (.a32(a32[31:0]), .eout0(eout[0]));

   fat_16to1 fat_16in (.b16(b16[15:0]), .eout1(eout[1]));
   
   fat_8to1 fat_8in (.c8(c8[7:0]), .eout2(eout[2]));

   fat_4to1 fat4in (.d4(d4[3:0]), .eout3(eout[3]));

   nand (eout[4],e2[1],e2[0]);
   
endmodule
