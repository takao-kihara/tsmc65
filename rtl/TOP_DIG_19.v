//`include "ADC_DFE.v"
//`include "SPI.v"

module TOP_DIG_19(in_adc1_p, in_adc1_n, in_adc2_p, in_adc2_n, in_adc3_p, in_adc3_n, in_adc4_p, in_adc4_n, in_adc_teg_p, in_adc_teg_n, scs_c, sdi_c, rst_c, sdo_i, outd_i, outd_clk_i, scs_ren, scs_oen, sdi_ren, sdi_oen, sdo_ren, sdo_oen, rst_ren, rst_oen, outd_ren, outd_oen, outd_clk_ren, outd_clk_oen);

	input in_adc1_p, in_adc1_n, in_adc2_p, in_adc2_n, in_adc3_p, in_adc3_n, in_adc4_p, in_adc4_n, in_adc_teg_p, in_adc_teg_n;
	input scs_c, sdi_c, rst_c;

	output sdo_i;
	output signed [20:0] outd_i;
	output outd_clk_i;

	wire scs, sdi, sdo, rst;
	wire signed [2:0] dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4;
	SPI SPI01(scs, sdi, sdo, rst, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4);

	wire vcntrl_vco1_p, vcntrl_vco1_n, vcntrl_vco2_p, vcntrl_vco2_n, vcntrl_vco3_p, vcntrl_vco3_n, vcntrl_vco4_p, vcntrl_vco4_n, vcntrl_vco5_p, vcntrl_vco5_n, sw_vco1_p, sw_vco1_n, sw_vco2_p, sw_vco2_n, sw_vco3_p, sw_vco3_n, sw_vco4_p, sw_vco4_n,  sw_vco5_p,  sw_vco5_n;
	wire clk_adc1, clk_adc2, clk_adc3, clk_adc4, clk_adc_teg;
	wire enable_divider_dfe, enable_divider_adc_teg, enable_dfe, enable_adc_teg;

	ADC_DFE ADC_DFE01(vcntrl_vco1_p, vcntrl_vco1_n, vcntrl_vco2_p, vcntrl_vco2_n, vcntrl_vco3_p, vcntrl_vco3_n, vcntrl_vco4_p, vcntrl_vco4_n, vcntrl_vco5_p, vcntrl_vco5_n, sw_vco1_p, sw_vco1_n, sw_vco2_p, sw_vco2_n, sw_vco3_p, sw_vco3_n, sw_vco4_p, sw_vco4_n,  sw_vco5_p,  sw_vco5_n, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4, clk_adc1, clk_adc2, clk_adc3, clk_adc4, clk_adc_teg, rst, enable_divider_dfe, enable_divider_adc_teg, enable_dfe, enable_adc_teg, outd_clk_i, outd_i);

	output scs_ren, scs_oen, sdi_ren, sdi_oen, sdo_ren, sdo_oen, rst_ren, rst_oen;
	assign scs_ren = 1;
	assign sdi_ren = 1;
	assign sdo_ren = 1;
	assign rst_ren = 1;

	assign scs_oen = 1;
	assign sdi_oen = 1;
	assign sdo_oen = 0;
	assign rst_oen = 1;

	output [20:0] outd_ren;
	assign outd_ren = {21{1'b1}};

       output [20:0] outd_oen;
	assign outd_oen = {21{1'b0}};

	output outd_clk_ren, outd_clk_oen;
	assign outd_clk_ren = 1;
	assign outd_clk_oen = 0;
	
endmodule
