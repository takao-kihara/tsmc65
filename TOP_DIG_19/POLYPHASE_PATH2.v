module POLYPHASE_PATH2 (CLK, CLK_2, RES, IN, OUT1, OUT2);

	 parameter BW = 11;

	 input CLK, CLK_2, RES;
	 input signed [BW-1:0] IN;
	 output signed [BW-1:0] OUT1, OUT2;

	 wire signed [BW-1:0] Z1;
	 wire signed [BW-1:0] ON1, ON2, ON3;

	DFFR_11B DELAY (IN, CLK, RES, Z1, ON1),
                Downsample01 (IN, CLK_2, RES, OUT1, ON2),
		  Downsample02 (Z1, CLK_2, RES, OUT2, ON3);
	
endmodule
