//`include "divider1.v"
//`include "divider2.v"
//`include "TSMC_DFE_1.v"
//`include "ADC_TEG.v"
//`include "SELECTOR_DIGITAL.v"

module TSMC_DIGITAL_1(IN_DFE_1_p, IN_DFE_1_n, IN_DFE_2_p, IN_DFE_2_n, IN_DFE_3_p, IN_DFE_3_n, IN_DFE_4_p, IN_DFE_4_n, IN_ADC_TEG_p, IN_ADC_TEG_n, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4, CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, CLK_adc1_16, CLK_adc1_32, CLK_ADC_TEG, CLK_ADC_TEG_2, CLK_ADC_TEG_4, CLK_ADC_TEG_8, RES, ENABLE_DFE, ENABLE_ADC_TEG, OUT_CLK, OUT);

       parameter BW = 6;

	input [BW-1:0] IN_DFE_1_p, IN_DFE_1_n, IN_DFE_2_p, IN_DFE_2_n, IN_DFE_3_p, IN_DFE_3_n, IN_DFE_4_p, IN_DFE_4_n, IN_ADC_TEG_p, IN_ADC_TEG_n;
	input signed [BW-4:0] dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4;
	input CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, CLK_adc1_16, CLK_adc1_32, CLK_ADC_TEG, CLK_ADC_TEG_2, CLK_ADC_TEG_4, CLK_ADC_TEG_8, RES, ENABLE_DFE, ENABLE_ADC_TEG;
	output signed [BW+14:0] OUT;
	output OUT_CLK;

	wire OUT_CLK_DFE;
	wire signed [BW+14:0] IN_DFE;

	TSMC_DFE_1 TSMC01(IN_DFE_1_p, IN_DFE_1_n, IN_DFE_2_p, IN_DFE_2_n, IN_DFE_3_p, IN_DFE_3_n, IN_DFE_4_p, IN_DFE_4_n, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4, CLK_adc1, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, CLK_adc1_32, CLK_adc2, CLK_adc3, CLK_adc4, RES, ENABLE_DFE, OUT_CLK_DFE, IN_DFE);

	wire signed [BW+3:0] IN_ADC_TEG_1, IN_ADC_TEG_2;
	wire OUT_CLK_ADC_TEG;

	ADC_TEG TSMC02(IN_ADC_TEG_p, IN_ADC_TEG_n, CLK_ADC_TEG, CLK_ADC_TEG_2, CLK_ADC_TEG_4, CLK_ADC_TEG_8, RES, ENABLE_ADC_TEG, OUT_CLK_ADC_TEG, IN_ADC_TEG_1, IN_ADC_TEG_2);

	SELECTOR_DIGITAL SELECTOR01 (IN_DFE, IN_ADC_TEG_1, IN_ADC_TEG_2, OUT_CLK_DFE, OUT_CLK_ADC_TEG, ENABLE_DFE, ENABLE_ADC_TEG, OUT, OUT_CLK);

endmodule
