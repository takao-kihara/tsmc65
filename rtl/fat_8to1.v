module fat_8to1 (c8,eout2 );
   input [7:0]  c8;
   output 	eout2;

   nand_nor_2 fat_8to1_1(.in(c8[7:4]), .out(w1));
   nand_nor_2 fat_8to1_2(.in(c8[3:0]), .out(w2));
   nand (eout2,w1,w2);
   

endmodule
