//`include "DFFR_6B_4.v"
module TI_POLYPHASE_PATH2_kai (CLK, CLK_2, RES, ENABLE, IN, OUT1, OUT2);

	 parameter BW = 6;

	 input CLK, CLK_2, RES, ENABLE;
	 input signed [BW-1:0] IN;
	 output signed [BW-1:0] OUT1, OUT2;

	 wire signed [BW-1:0] Z1, Z2;
	 wire signed [BW-1:0] ON1, ON2, ON3, ON4;

	DFFR_6B_4	DELAY01 (IN, CLK, RES, ENABLE, Z1, ON1),
		       DELAY02 (Z1, CLK, RES, ENABLE, Z2, ON2);
	DFFR_6B	Downsample01 (Z1, CLK_2, RES, OUT1, ON3),
		       Downsample02 (Z2, CLK_2, RES, OUT2, ON4);
endmodule
