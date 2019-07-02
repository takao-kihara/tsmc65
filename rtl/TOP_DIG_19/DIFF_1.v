module DIFF_1(IN, CLK, RES, OUT);

		input signed [20:0] IN;
		input CLK,RES;
		output signed [20:0] OUT;
		wire signed [20:0] OUT01,ON;
		
	DFFR_21B DFF01(IN, CLK, RES, OUT01, ON);

		
		assign  OUT = IN-OUT01;
						
		
endmodule
