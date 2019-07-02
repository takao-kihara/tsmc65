module POLYPHASE_PATH2_ADC_TEG_ENABLE (CLK, CLK_2, RES, ENABLE, IN, OUT1, OUT2);

	 parameter BW = 6;

	 input CLK, CLK_2, RES, ENABLE;
	 input signed [BW-1:0] IN;
	 output signed [BW-1:0] OUT1, OUT2;

	 wire signed [BW-1:0] Z1;
	 wire signed [BW-1:0] ON1, ON2, ON3;

	DFFR_6B_4  DELAY (IN, CLK, RES, ENABLE, Z1, ON1);
       DFFR_6B  Downsample01 (IN, CLK_2, RES, OUT1, ON2),
		  Downsample02 (Z1, CLK_2, RES, OUT2, ON3);
	
endmodule
