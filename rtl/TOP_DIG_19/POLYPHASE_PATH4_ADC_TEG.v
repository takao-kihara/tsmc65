//`include "POLYPHASE_PATH2_ADC_TEG.v"
//`include "POLYPHASE_PATH2_ADC_TEG_ENABLE.v"

module POLYPHASE_PATH4_ADC_TEG (CLK, CLK_2, CLK_4, RES, ENABLE, IN, OUT1, OUT2, OUT3, OUT4);

	 parameter BW = 6;

	 input CLK, CLK_2, CLK_4, ENABLE, RES;
	 input signed [BW-1:0] IN;
	 output signed [BW-1:0] OUT1, OUT2, OUT3, OUT4;

	 wire signed [BW-1:0] OUT01, OUT02;

	POLYPHASE_PATH2_ADC_TEG_ENABLE PATH1_1 (CLK, CLK_2, RES, ENABLE, IN, OUT01, OUT02);
       POLYPHASE_PATH2_ADC_TEG PATH2_1 (CLK_2, CLK_4, RES, OUT01, OUT1, OUT2),
                               PATH2_2 (CLK_2, CLK_4, RES, OUT02, OUT3, OUT4);

endmodule
