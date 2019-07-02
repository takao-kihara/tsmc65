module INTE_2(IN, CLK, RES, OUT);

			input  signed[20:0] IN;
			input CLK,RES;
			output signed[20:0] OUT;
			reg signed [20:0] OUT;
			wire  signed [20:0] OUT01,ON;
			
	DFFR_21B DFF01(OUT, CLK, RES, OUT01, ON);

	always@(IN or OUT01) OUT = IN + OUT01;
	
endmodule 
