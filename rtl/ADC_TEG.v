//`include "CIC_FILTER_4X2P_ADC_TEG.v"
//`include "DEMUX_1to2.v"

module ADC_TEG (IN_p, IN_n, CLK, CLK_2, CLK_4, CLK_8, RES, ENABLE, OUT_CLK, OUT1, OUT2);

	parameter BW = 6;

	input CLK, CLK_2, CLK_4, CLK_8, RES, ENABLE;
       input  [BW-1:0] IN_p, IN_n;
	output OUT_CLK;
	output signed [BW+3:0] OUT1, OUT2;

	wire signed [BW-1:0] OUT01;
	CIC_FILTER_VCO_DIFFERENTIAL CIC_01(IN_p, IN_n, CLK, RES, ENABLE, OUT01);

	wire signed [BW-1:0] ON1;
	wire signed [BW-1:0] OUT01_Z;
	DFFR_6B_4 DFF01(OUT01, CLK, RES, ENABLE, OUT01_Z, ON1);

	wire signed [BW+3:0] OUT;
	CIC_FILTER_4X2P_ADC_TEG CIC_02(OUT01_Z, CLK, CLK_2, CLK_4, RES, ENABLE, OUT);

	wire CLK_8B;
	assign CLK_8B = ~CLK_8;
	assign OUT_CLK = CLK_8;

	DEMUX_1to2 DEMUX01(OUT, CLK_8, CLK_8B, RES, OUT1, OUT2);
	
endmodule
