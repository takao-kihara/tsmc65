//`include"vco_nand_32stage.v"
//`include"dff_2out31_0.v"

module nandvco_sampler (vcntrl_vco,sw_vco,clk,samp,samp_b );
   input vcntrl_vco;
   input clk;
   input 	 sw_vco;
   wire [31:0] out_vco_p;
   wire [31:0]  out_vco_m;
   output [31:0] samp;
   output [31:0] samp_b;
   wire [31:0] 	 a;
   wire [31:0] 	 b;
   

   vco_nand_32stage vco(.out_vco_p(out_vco_p[31:0]), .out_vco_m(out_vco_m[31:0]), .vcntrl_vco(vcntrl_vco), .sw_vco(sw_vco));

   dff_2out31_0 dff_1(.d(out_vco_p[31:0]),.clk(clk), .q(samp[31:0]), .qb(samp_b[31:0]));
   
   dff_2out31_0 dff_2(.d(out_vco_m[31:0]),.clk(clk), .q(a[31:0]), .qb(b[31:0]));
   
   
endmodule
