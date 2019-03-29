module fat_32to1 ( a32,eout0);
   
  input [31:0] a32; 
  output    eout0;
   wire [7:0] w;
   wire [1:0] y ;
   
   nand_nor_2 fat32to1_1 (.in(a32[31:28]), .out(w[7]));
      nand_nor_2 fat32to1_2 (.in(a32[27:24]), .out(w[6]));
      nand_nor_2 fat32to1_3 (.in(a32[23:20]), .out(w[5]));
      nand_nor_2 fat32to1_4 (.in(a32[19:16]), .out(w[4]));
      nand_nor_2 fat32to1_5 (.in(a32[15:12]), .out(w[3]));
      nand_nor_2 fat32to1_6 (.in(a32[11:8]), .out(w[2]));
      nand_nor_2 fat32to1_7 (.in(a32[7:4]), .out(w[1]));
      nand_nor_2 fat32to1_8 (.in(a32[3:0]), .out(w[0]));
         nand_nor_2 fat32to1_9 (.in(w[7:4]), .out(y[1]));
         nand_nor_2 fat32to1_10 (.in(w[3:0]), .out(y[0]));
   nand(eout0,y[1],y[0]);
   
   
   
endmodule
