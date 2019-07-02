module fat16in (in16,a8,b4,c2,d1,e1 );
   input[15:0] in16;
   output [7:0] a8;
   output [3:0] b4;
   output [1:0] c2;
   output 	d1;
   output 	e1;
   wire [3:0]	w;
  
   

   
   nand_nor  ENC16in_1 (.in(in16[15:12]), .aout(a8[7:6]), .bout(b4[3]), .cout(w[3]));
   
   nand_nor ENC16in_2 (.in(in16[11:8]), .aout(a8[5:4]), .bout(b4[2]), .cout(w[2]));
      
   nand_nor ENC16in_3 (.in(in16[7:4]), .aout(a8[3:2]), .bout(b4[1]), .cout(w[1]));
   
   nand_nor ENC16in_4 (.in(in16[3:0]), .aout(a8[1:0]), .bout(b4[0]), .cout(w[0]));
   

nand_nor ENC16in_5 (.in(w[3:0]), .aout(c2[1:0]), .bout(d1), .cout(e1));
endmodule
