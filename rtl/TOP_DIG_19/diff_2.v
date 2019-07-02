module diff_2(IN, CLK, RES, ENABLE, OUT);

		input  [5:0] IN;
		input CLK,RES,ENABLE;
		output [4:0] OUT;
		wire [5:0] OUT01,ON;
		
	DFFR_6B_3 DFF01(IN, CLK, RES, ENABLE, OUT01, ON);

		assign  OUT = IN-OUT01;
						
		
endmodule
