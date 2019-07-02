module delay (vc_p,in_p,vc_m,in_m,sw,out_p,out_m );
   input vc_p;
   inout in_p;
   input vc_m;
   inout in_m;
   input sw;
   inout out_p;
   inout out_m;
   wire  nand_out1;
   wire  nand_out2;
   
       
   nand(out_p,vc_p,in_p);
   nand(out_m,vc_m,in_m);

   nand(out_m,out_p,sw);
   nand(out_p,out_m,sw);
   
   
   

endmodule
