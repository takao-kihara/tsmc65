//`include "INTE_1.v"
//`include "INTE_2.v"
//`include "DFFR_21B.v"
//`include "DIFF_1.v"
module CIC_FILTER_4X3(IN, CLK, CLK_4, RES, OUT);

	parameter BW = 15;

	input signed [BW-1:0] IN;
	input CLK, CLK_4, RES;
	output signed [BW+5:0] OUT;
	wire signed [BW+5:0] OUT01, OUT02, OUT03, OUT04, OUT05, OUT06, OUT_Z, ON1, ON2;

	INTE_1 inte01(IN, CLK, RES, OUT01);
	INTE_2 inte02(OUT01, CLK, RES, OUT02),
	       inte03(OUT02, CLK, RES, OUT03);
	DFFR_21B DFF01(OUT03, CLK_4, RES, OUT04, ON1);
	DIFF_1 diff01(OUT04, CLK_4, RES, OUT05),
	       diff02(OUT05, CLK_4, RES, OUT06),
	       diff03(OUT06, CLK_4, RES, OUT_Z);
	DFFR_21B DFF02(OUT_Z, CLK_4, RES, OUT, ON2);
				
endmodule
