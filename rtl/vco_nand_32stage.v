//`include"delay.v"

module vco_nand_32stage (out_vco_p,out_vco_m,vcntrl_vco,sw_vco );
   input vcntrl_vco;
   
   inout [31:0] out_vco_p;
   inout [31:0]  out_vco_m;
   input 	 sw_vco;
   delay delay_0(.vc_p(vcntrl_vco), .in_p(out_vco_p[31]), .vc_m(vcntrl_vco), .in_m(out_vco_m[31]), .sw(sw_vco),  .out_p(out_vco_p[0]), .out_m(out_vco_m[0]));
   delay delay_1(.vc_p(vcntrl_vco), .in_p(out_vco_m[0]), .vc_m(vcntrl_vco), .in_m(out_vco_p[0]), .sw(sw_vco), .out_p(out_vco_p[1]), .out_m(out_vco_m[1]));
   delay delay_2(.vc_p(vcntrl_vco), .in_p(out_vco_m[1]), .vc_m(vcntrl_vco), .in_m(out_vco_p[1]), .sw(sw_vco), .out_p(out_vco_p[2]), .out_m(out_vco_m[2]));
   delay delay_3(.vc_p(vcntrl_vco), .in_p(out_vco_m[2]), .vc_m(vcntrl_vco), .in_m(out_vco_p[2]), .sw(sw_vco), .out_p(out_vco_p[3]), .out_m(out_vco_m[3]));
   delay delay_4(.vc_p(vcntrl_vco), .in_p(out_vco_m[3]), .vc_m(vcntrl_vco), .in_m(out_vco_p[3]), .sw(sw_vco), .out_p(out_vco_p[4]), .out_m(out_vco_m[4]));
   delay delay_5(.vc_p(vcntrl_vco), .in_p(out_vco_m[4]), .vc_m(vcntrl_vco), .in_m(out_vco_p[4]), .sw(sw_vco), .out_p(out_vco_p[5]), .out_m(out_vco_m[5]));
   delay delay_6(.vc_p(vcntrl_vco), .in_p(out_vco_m[5]), .vc_m(vcntrl_vco), .in_m(out_vco_p[5]), .sw(sw_vco), .out_p(out_vco_p[6]), .out_m(out_vco_m[6]));
   delay delay_7(.vc_p(vcntrl_vco), .in_p(out_vco_m[6]), .vc_m(vcntrl_vco), .in_m(out_vco_p[6]), .sw(sw_vco), .out_p(out_vco_p[7]), .out_m(out_vco_m[7]));
   delay delay_8(.vc_p(vcntrl_vco), .in_p(out_vco_m[7]), .vc_m(vcntrl_vco), .in_m(out_vco_p[7]), .sw(sw_vco), .out_p(out_vco_p[8]), .out_m(out_vco_m[8]));
   delay delay_9(.vc_p(vcntrl_vco), .in_p(out_vco_m[8]), .vc_m(vcntrl_vco), .in_m(out_vco_p[8]), .sw(sw_vco), .out_p(out_vco_p[9]), .out_m(out_vco_m[9]));
   delay delay_10(.vc_p(vcntrl_vco), .in_p(out_vco_m[9]), .vc_m(vcntrl_vco), .in_m(out_vco_p[9]), .sw(sw_vco), .out_p(out_vco_p[10]), .out_m(out_vco_m[10]));
   delay delay_11(.vc_p(vcntrl_vco), .in_p(out_vco_m[10]), .vc_m(vcntrl_vco), .in_m(out_vco_p[10]), .sw(sw_vco), .out_p(out_vco_p[11]), .out_m(out_vco_m[11]));
   delay delay_12(.vc_p(vcntrl_vco), .in_p(out_vco_m[11]), .vc_m(vcntrl_vco), .in_m(out_vco_p[11]), .sw(sw_vco), .out_p(out_vco_p[12]), .out_m(out_vco_m[12]));
   delay delay_13(.vc_p(vcntrl_vco), .in_p(out_vco_m[12]), .vc_m(vcntrl_vco), .in_m(out_vco_p[12]), .sw(sw_vco), .out_p(out_vco_p[13]), .out_m(out_vco_m[13]));
   delay delay_14(.vc_p(vcntrl_vco), .in_p(out_vco_m[13]), .vc_m(vcntrl_vco), .in_m(out_vco_p[13]), .sw(sw_vco), .out_p(out_vco_p[14]), .out_m(out_vco_m[14]));
   delay delay_15(.vc_p(vcntrl_vco), .in_p(out_vco_m[14]), .vc_m(vcntrl_vco), .in_m(out_vco_p[14]), .sw(sw_vco), .out_p(out_vco_p[15]), .out_m(out_vco_m[15]));
   delay delay_16(.vc_p(vcntrl_vco), .in_p(out_vco_m[15]), .vc_m(vcntrl_vco), .in_m(out_vco_p[15]), .sw(sw_vco), .out_p(out_vco_p[16]), .out_m(out_vco_m[16]));
   delay delay_17(.vc_p(vcntrl_vco), .in_p(out_vco_m[16]), .vc_m(vcntrl_vco), .in_m(out_vco_p[16]), .sw(sw_vco), .out_p(out_vco_p[17]), .out_m(out_vco_m[17]));
   delay delay_18(.vc_p(vcntrl_vco), .in_p(out_vco_m[17]), .vc_m(vcntrl_vco), .in_m(out_vco_p[17]), .sw(sw_vco), .out_p(out_vco_p[18]), .out_m(out_vco_m[18]));
   delay delay_19(.vc_p(vcntrl_vco), .in_p(out_vco_m[18]), .vc_m(vcntrl_vco), .in_m(out_vco_p[18]), .sw(sw_vco), .out_p(out_vco_p[19]), .out_m(out_vco_m[19]));
   delay delay_20(.vc_p(vcntrl_vco), .in_p(out_vco_m[19]), .vc_m(vcntrl_vco), .in_m(out_vco_p[19]), .sw(sw_vco), .out_p(out_vco_p[20]), .out_m(out_vco_m[20]));
   delay delay_21(.vc_p(vcntrl_vco), .in_p(out_vco_m[20]), .vc_m(vcntrl_vco), .in_m(out_vco_p[20]), .sw(sw_vco), .out_p(out_vco_p[21]), .out_m(out_vco_m[21]));
   delay delay_22(.vc_p(vcntrl_vco), .in_p(out_vco_m[21]), .vc_m(vcntrl_vco), .in_m(out_vco_p[21]), .sw(sw_vco), .out_p(out_vco_p[22]), .out_m(out_vco_m[22]));
   delay delay_23(.vc_p(vcntrl_vco), .in_p(out_vco_m[22]), .vc_m(vcntrl_vco), .in_m(out_vco_p[22]), .sw(sw_vco), .out_p(out_vco_p[23]), .out_m(out_vco_m[23]));
   delay delay_24(.vc_p(vcntrl_vco), .in_p(out_vco_m[23]), .vc_m(vcntrl_vco), .in_m(out_vco_p[23]), .sw(sw_vco), .out_p(out_vco_p[24]), .out_m(out_vco_m[24]));
   delay delay_25(.vc_p(vcntrl_vco), .in_p(out_vco_m[24]), .vc_m(vcntrl_vco), .in_m(out_vco_p[24]), .sw(sw_vco), .out_p(out_vco_p[25]), .out_m(out_vco_m[25]));
   delay delay_26(.vc_p(vcntrl_vco), .in_p(out_vco_m[25]), .vc_m(vcntrl_vco), .in_m(out_vco_p[25]), .sw(sw_vco), .out_p(out_vco_p[26]), .out_m(out_vco_m[26]));
   delay delay_27(.vc_p(vcntrl_vco), .in_p(out_vco_m[26]), .vc_m(vcntrl_vco), .in_m(out_vco_p[26]), .sw(sw_vco), .out_p(out_vco_p[27]), .out_m(out_vco_m[27]));
   delay delay_28(.vc_p(vcntrl_vco), .in_p(out_vco_m[27]), .vc_m(vcntrl_vco), .in_m(out_vco_p[27]), .sw(sw_vco), .out_p(out_vco_p[28]), .out_m(out_vco_m[28]));
   delay delay_29(.vc_p(vcntrl_vco), .in_p(out_vco_m[28]), .vc_m(vcntrl_vco), .in_m(out_vco_p[28]), .sw(sw_vco), .out_p(out_vco_p[29]), .out_m(out_vco_m[29]));
   delay delay_30(.vc_p(vcntrl_vco), .in_p(out_vco_m[29]), .vc_m(vcntrl_vco), .in_m(out_vco_p[29]), .sw(sw_vco), .out_p(out_vco_p[30]), .out_m(out_vco_m[30]));
   delay delay_31(.vc_p(vcntrl_vco), .in_p(out_vco_m[30]), .vc_m(vcntrl_vco), .in_m(out_vco_p[30]), .sw(sw_vco), .out_p(out_vco_p[31]), .out_m(out_vco_m[31]));
   
   

   
  
   
   

   

endmodule
