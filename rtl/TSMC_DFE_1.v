//`include "CIC_FILTER_VCO_DIFFERENTIAL.v"
//`include "DC_OFFSET.v" 
//`include "MIX_TI_CIC_FILTER_8X2P.v"
//`include "CIC_FILTER_4X2P.v"
//`include "CIC_FILTER_4X3.v"
//`include "MUX_2to1.v"

module TSMC_DFE_1(IN1_p, IN1_n, IN2_p, IN2_n, IN3_p, IN3_n, IN4_p, IN4_n, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4, CLK_adc1, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, CLK_adc1_32, CLK_adc2, CLK_adc3, CLK_adc4, RES, ENABLE_1, OUT_CLK, OUT);

       parameter BW = 6;

	input [BW-1:0] IN1_p, IN1_n, IN2_p, IN2_n, IN3_p, IN3_n, IN4_p, IN4_n;
	input signed [BW-4:0] dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4;
	input CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, CLK_adc1_32, RES, ENABLE_1;
	output signed [BW+14:0] OUT;
	output OUT_CLK;

	wire signed [BW+14:0] OUT1, OUT2;
		  
	wire signed [BW-1:0] OUT_adc1, OUT_adc2, OUT_adc3, OUT_adc4;
	CIC_FILTER_VCO_DIFFERENTIAL CIC01_1(IN1_p, IN1_n, CLK_adc1, RES, ENABLE_1, OUT_adc1),
			              CIC01_2(IN2_p, IN2_n, CLK_adc2, RES, ENABLE_1, OUT_adc2),
			              CIC01_3(IN3_p, IN3_n, CLK_adc3, RES, ENABLE_1, OUT_adc3),
	     		              CIC01_4(IN4_p, IN4_n, CLK_adc4, RES, ENABLE_1, OUT_adc4);
	
	wire signed [BW-1:0] IN_adc1, IN_adc2, IN_adc3, IN_adc4;
	DC_OFFSET OFFSET01(OUT_adc1, dc_off_adc1, IN_adc1),
	          OFFSET02(OUT_adc2, dc_off_adc2, IN_adc2),
		   OFFSET03(OUT_adc3, dc_off_adc3, IN_adc3),
		   OFFSET04(OUT_adc4, dc_off_adc4, IN_adc4);

	wire signed [BW+4:0] OUT01, OUT02;
	MIX_TI_CIC_FILTER_8X2P CIC02(IN_adc1, IN_adc2, IN_adc3, IN_adc4, CLK_adc1, CLK_adc1_2, CLK_adc2, CLK_adc3, CLK_adc4, RES, ENABLE_1, OUT01, OUT02);
 
	wire signed [BW+4:0] OUT01_Z, OUT02_Z;
	wire signed [BW+4:0] ON1, ON2;
	DFFR_11B DFF01(OUT01, CLK_adc1_2, RES, OUT01_Z, ON1),
		  DFF02(OUT02, CLK_adc1_2, RES, OUT02_Z, ON2);

	wire signed [BW+8:0] OUT03, OUT04;
	CIC_FILTER_4X2P CIC02_I(OUT01_Z, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, RES, OUT03),
	                CIC02_Q(OUT02_Z, CLK_adc1_2, CLK_adc1_4, CLK_adc1_8, RES, OUT04);

	
	CIC_FILTER_4X3 CIC03_I(OUT03, CLK_adc1_8, CLK_adc1_32, RES, OUT1),
                      CIC03_Q(OUT04, CLK_adc1_8, CLK_adc1_32, RES, OUT2);

	assign OUT_CLK = CLK_adc1_32;

	MUX_2to1 MUX01(OUT1, OUT2, CLK_adc1_32, RES, OUT);


				
endmodule
