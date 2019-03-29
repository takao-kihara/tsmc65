module fat64in (i64,a32,b16,c8,d4,e2,f1 );
 input [63:0] i64;
   output [31:0] a32;
   output[15:0] b16;
   output [7:0] c8;
   output [3:0] d4;
   output [1:0] e2;
   output 	f1;
   
   wire[1:0] 	w;
      fat16in ENC64in_1(.in16(i64[63:48]), .a8(a32[31:24]), .b4(b16[15:12]), .c2(c8[7:6]), .d1(d4[3]), .e1(e2[1]));
      
fat16in ENC64in_2(.in16(i64[47:32]), .a8(a32[23:16]), .b4(b16[11:8]), .c2(c8[5:4]), .d1(d4[2]), .e1(w[1]));

      fat16in ENC64in_3(.in16(i64[31:16]), .a8(a32[15:8]), .b4(b16[7:4]), .c2(c8[3:2]), .d1(d4[1]), .e1(e2[0]));
     
 fat16in ENC64in_4(.in16(i64[15:0]), .a8(a32[7:0]), .b4(b16[3:0]), .c2(c8[1:0]), .d1(d4[0]), .e1(w[0]));

   nand(f1,e2[1],w[1]);
   
endmodule
