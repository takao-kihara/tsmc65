//`include "CIC_FILTER_VCO.v"
module CIC_FILTER_VCO_DIFFERENTIAL(IN_p, IN_m, CLK, RES, ENABLE, OUT);

	parameter BW = 5;

	input  [BW:0] IN_p, IN_m;
	input CLK, RES, ENABLE;
	output signed [BW:0] OUT;
	wire [BW-1:0] OUT01, OUT02;

	CIC_FILTER_VCO CIC_p(IN_p, CLK, RES, ENABLE, OUT01),
	               CIC_m(IN_m, CLK, RES, ENABLE, OUT02);
			
	assign OUT = $signed({1'b0,OUT01})-$signed({1'b0,OUT02});

endmodule
