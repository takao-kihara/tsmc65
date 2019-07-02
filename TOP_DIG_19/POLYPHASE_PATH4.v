//`include "POLYPHASE_PATH2.v"

module POLYPHASE_PATH4 (CLK, CLK_2, CLK_4, RES, IN, OUT1, OUT2, OUT3, OUT4);

	 parameter BW = 11;

	 input CLK, CLK_2, CLK_4, RES;
	 input signed [BW-1:0] IN;
	 output signed [BW-1:0] OUT1, OUT2, OUT3, OUT4;

	 wire signed [BW-1:0] OUT01, OUT02;

	POLYPHASE_PATH2 PATH1_1 (CLK, CLK_2, RES, IN, OUT01, OUT02),
                       PATH2_1 (CLK_2, CLK_4, RES, OUT01, OUT1, OUT2),
                       PATH2_2 (CLK_2, CLK_4, RES, OUT02, OUT3, OUT4);

endmodule
