//`include "nandvco_sampler.v"
//`include "adc_digi_top.v"

module adc (vcntrl_vco,sw_vco,eout,clk );
   input vcntrl_vco;
   input clk;
   input 	 sw_vco;
   output [5:0]  eout;
   wire [31:0] 	 sampout;
   wire [31:0] 	 sampout_b;
   

   nandvco_sampler nandvco_samp(.vcntrl_vco(vcntrl_vco), .sw_vco(sw_vco), .clk(clk), .samp(sampout[31:0]), .samp_b(sampout_b[31:0]));

   adc_digi_top digitop(.qout(sampout[31:0]), .qout_b(sampout_b[31:0]), .eout(eout[5:0]), .clk(clk));
   
   
endmodule
