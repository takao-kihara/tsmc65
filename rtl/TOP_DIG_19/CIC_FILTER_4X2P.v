//`include "DFFR_11B.v"
//`include "POLYPHASE_PATH4.v"
//`include "POLYPHASE_PATH4X2.v"

module CIC_FILTER_4X2P (IN, CLK, CLK_2, CLK_4, RES, OUT);

	parameter BW = 11;

	input CLK, CLK_2, CLK_4, RES;
       input signed [BW-1:0] IN;
	output signed [BW+3:0]OUT;
	wire signed [BW-1:0] OUT01, OUT02, OUT03, OUT04;

	POLYPHASE_PATH4 POLYPHASE_01(CLK, CLK_2, CLK_4, RES, IN, OUT01, OUT02, OUT03, OUT04);

	POLYPHASE_PATH4X2 POLYPASE_02(CLK_4, RES, OUT01, OUT02, OUT03, OUT04, OUT);
	
endmodule
