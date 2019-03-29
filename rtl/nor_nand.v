module nor_nand (in,out );
   input [3:0] in;
   output      out;
   wire        w1;
   wire        w2;
   

   nor(w1,in[3],in[2]);
   nor(w2,in[1],in[0]);
   nand(out,w1,w2);
endmodule
