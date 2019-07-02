//`include "DFFR_6B_3.v"
//`include "diff_2.v"
module CIC_FILTER_VCO(IN, CLK, RES, ENABLE, OUT);

	parameter BW = 5;

	input  [BW:0] IN;
	input CLK, RES, ENABLE;
	output [BW-1:0] OUT;
	wire [BW:0] OUT01, ON;

	DFFR_6B_3 DFF01(IN, CLK, RES, ENABLE, OUT01, ON);
	diff_2 diff01(OUT01, CLK, RES, ENABLE, OUT);

endmodule
