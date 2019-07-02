module fat_16to1 ( b16,eout1);
   input [15:0] b16;
   output 	eout1;
   wire [3:0] 	w;
   
   nor_nand fat_16to1_1(.in(b16[15:12]), .out(w[3]));
   nor_nand fat_16to1_2(.in(b16[11:8]), .out(w[2]));
   nor_nand fat_16to1_3(.in(b16[7:4]), .out(w[1]));
   nor_nand fat_16to1_4(.in(b16[3:0]), .out(w[0]));   
   nor_nand fat_16to1_5(.in(w[3:0]), .out(eout1));
endmodule
