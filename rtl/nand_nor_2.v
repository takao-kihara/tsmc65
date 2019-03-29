module nand_nor_2 (in,out );
   input [3:0] in;
   output      out ;

      nand(w1,in[3],in[2]);
   nand(w2,in[1],in[0]);
   nor(out,w1,w2);
endmodule
