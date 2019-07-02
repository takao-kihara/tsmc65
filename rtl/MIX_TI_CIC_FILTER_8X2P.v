//`include "TI_CIC_FILTER_8X2P.v"
//`include "POSITIVE_MIXER.v"
//`include "NEGATIVE_MIXER.v"

module MIX_TI_CIC_FILTER_8X2P (IN1, IN2, IN3, IN4, CLK_adc1, CLK_adc1_2, CLK_adc2, CLK_adc3, CLK_adc4, RES, ENABLE, OUT1, OUT2);

	 parameter BW = 6;

	 input CLK_adc1, CLK_adc1_2, CLK_adc2, CLK_adc3, CLK_adc4, RES, ENABLE;
	 input signed [BW-1:0] IN1, IN2, IN3, IN4;
	 output signed [BW+4:0] OUT1, OUT2; 

	 wire signed [BW-1:0] IN1_MIX, IN2_MIX, IN3_MIX, IN4_MIX;

	POSITIVE_MIXER MIXER01(IN1, IN1_MIX),
			MIXER02(IN4, IN4_MIX);

	NEGATIVE_MIXER MIXER03(IN2, IN2_MIX),
			 MIXER04(IN3, IN3_MIX);

	TI_CIC_FILTER_8X2P CIC01(IN1_MIX, IN2_MIX, IN3_MIX, IN4_MIX, CLK_adc1, CLK_adc1_2, CLK_adc2, CLK_adc3, CLK_adc4, RES, ENABLE, OUT1, OUT2);


endmodule
