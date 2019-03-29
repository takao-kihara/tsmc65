//`include "adc.v"
//`include "TSMC_DIGITAL_1.v"
//`include "divider1.v"
//`include "divider2.v"

module ADC_DFE(vcntrl_vco1_p, vcntrl_vco1_n, vcntrl_vco2_p, vcntrl_vco2_n, vcntrl_vco3_p, vcntrl_vco3_n, vcntrl_vco4_p, vcntrl_vco4_n, vcntrl_vco5_p, vcntrl_vco5_n, sw_vco1_p, sw_vco1_n, sw_vco2_p, sw_vco2_n, sw_vco3_p, sw_vco3_n, sw_vco4_p, sw_vco4_n,  sw_vco5_p,  sw_vco5_n, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4, CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_ADC_TEG, RES, ENABLE_DIVIDER_DFE, ENABLE_DIVIDER_ADC_TEG, ENABLE_DFE, ENABLE_ADC_TEG, OUT_CLK, OUT);

       parameter BW = 6;

	input vcntrl_vco1_p, vcntrl_vco1_n, vcntrl_vco2_p, vcntrl_vco2_n, vcntrl_vco3_p, vcntrl_vco3_n, vcntrl_vco4_p, vcntrl_vco4_n, vcntrl_vco5_p, vcntrl_vco5_n;
	input sw_vco1_p, sw_vco1_n, sw_vco2_p, sw_vco2_n, sw_vco3_p, sw_vco3_n, sw_vco4_p, sw_vco4_n,  sw_vco5_p,  sw_vco5_n;
	input signed [BW-4:0] dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4;
	input CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_ADC_TEG, RES, ENABLE_DIVIDER_DFE, ENABLE_DIVIDER_ADC_TEG, ENABLE_DFE, ENABLE_ADC_TEG;
	output signed [BW+14:0] OUT;
	output OUT_CLK;
	
	wire [BW-1:0] IN_DFE_1_p, IN_DFE_1_n, IN_DFE_2_p, IN_DFE_2_n, IN_DFE_3_p, IN_DFE_3_n, IN_DFE_4_p, IN_DFE_4_n, IN_ADC_TEG_p, IN_ADC_TEG_n;

	adc adc01_1(vcntrl_vco1_p, sw_vco1_p, IN_DFE_1_p, CLK_adc1),
           adc01_2(vcntrl_vco1_n, sw_vco1_n, IN_DFE_1_n, CLK_adc1),
	    adc02_1(vcntrl_vco2_p, sw_vco2_p, IN_DFE_2_p, CLK_adc2),
           adc02_2(vcntrl_vco2_n, sw_vco2_n, IN_DFE_2_n, CLK_adc2),
           adc03_1(vcntrl_vco3_p, sw_vco3_p, IN_DFE_3_p, CLK_adc3),
           adc03_2(vcntrl_vco3_n, sw_vco3_n, IN_DFE_3_n, CLK_adc3),
           adc04_1(vcntrl_vco4_p, sw_vco4_p, IN_DFE_4_p, CLK_adc4),
           adc04_2(vcntrl_vco4_n, sw_vco4_n, IN_DFE_4_n, CLK_adc4),
           adc_ADC_TEG_1(vcntrl_vco5_p, sw_vco5_p, IN_ADC_TEG_p, CLK_ADC_TEG),
	    adc_ADC_TEG_2(vcntrl_vco5_n, sw_vco5_n, IN_ADC_TEG_n, CLK_ADC_TEG);

       wire D1, D2, D3, D4, D5;
	wire CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, CLK_adc1_16, CLK_adc1_32;

	divider2 divider_DFE_1 (D1, CLK_adc1, CLK_adc1_2, ENABLE_DIVIDER_DFE, D1, RES);
	divider1 divider_DFE_2 (D2, CLK_adc1_2, CLK_adc1_4, D2, RES),
	         divider_DFE_3 (D3, CLK_adc1_4, CLK_adc1_8, D3, RES),
		  divider_DFE_4 (D4, CLK_adc1_8, CLK_adc1_16, D4, RES),
		  divider_DFE_5 (D5, CLK_adc1_16, CLK_adc1_32, D5, RES);

       wire D6, D7, D8;
	wire CLK_ADC_TEG_2, CLK_ADC_TEG_4, CLK_ADC_TEG_8;

	divider2 divider_ADC_TEG_1(D6, CLK_ADC_TEG, CLK_ADC_TEG_2, ENABLE_DIVIDER_ADC_TEG, D6, RES);
	divider1 divider_ADC_TEG_2(D7, CLK_ADC_TEG_2, CLK_ADC_TEG_4, D7, RES),
		  divider_ADC_TEG_3(D8, CLK_ADC_TEG_4, CLK_ADC_TEG_8, D8, RES);


	TSMC_DIGITAL_1 TSMC_DFE(IN_DFE_1_p, IN_DFE_1_n, IN_DFE_2_p, IN_DFE_2_n, IN_DFE_3_p, IN_DFE_3_n, IN_DFE_4_p, IN_DFE_4_n, IN_ADC_TEG_p, IN_ADC_TEG_n, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4, CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, CLK_adc1_16, CLK_adc1_32, CLK_ADC_TEG, CLK_ADC_TEG_2, CLK_ADC_TEG_4, CLK_ADC_TEG_8, RES, ENABLE_DIVIDER_DFE, ENABLE_DIVIDER_ADC_TEG, ENABLE_DFE, ENABLE_ADC_TEG, OUT_CLK, OUT);

endmodule
