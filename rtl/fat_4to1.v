module fat_4to1 ( d4,eout3);
   input [3:0] d4;
   output      eout3;
   wire        w1;
   wire        w2;
   

   nor(w1,d4[3],d4[2]);
   nor(w2,d4[1],d4[0]);
   nand(eout3,w1,w2);
   
   

endmodule
