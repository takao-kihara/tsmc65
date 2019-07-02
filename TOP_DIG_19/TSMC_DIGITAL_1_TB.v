`timescale 1ps/1ps
`include "TSMC_DIGITAL_1.v"

module TSMC_DIGITAL_1_TB();
	reg [5:0] MEM1 [0:131071];
	reg [5:0] MEM2 [0:131071];
	reg [5:0] MEM3 [0:131071];
	reg [5:0] MEM4 [0:131071];
	reg [5:0] MEM5 [0:131071];
	reg [5:0] MEM6 [0:131071];
	reg [5:0] MEM7 [0:131071];
	reg [5:0] MEM8 [0:131071];
	reg [5:0] MEM9 [0:131071];
	reg [5:0] MEM10 [0:131071];
	reg [5:0] IN_DFE_1_p, IN_DFE_1_n, IN_DFE_2_p, IN_DFE_2_n ,IN_DFE_3_p, IN_DFE_3_n, IN_DFE_4_p, IN_DFE_4_n, IN_ADC_TEG_p, IN_ADC_TEG_n;
	reg [2:0] dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4;
	reg CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_ADC_TEG, RES, ENABLE_DIVIDER_DFE, ENABLE_DIVIDER_ADC_TEG, ENABLE_DFE, ENABLE_ADC_TEG;
	wire OUT_CLK;
	wire signed [20:0] OUT;

	integer a;
	parameter STEP = 10;

TSMC_DIGITAL_1 TSMC01(IN_DFE_1_p, IN_DFE_1_n, IN_DFE_2_p, IN_DFE_2_n, IN_DFE_3_p, IN_DFE_3_n, IN_DFE_4_p, IN_DFE_4_n, IN_ADC_TEG_p, IN_ADC_TEG_n, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4, CLK_adc1, CLK_adc2, CLK_adc3, CLK_adc4, CLK_ADC_TEG, RES, ENABLE_DIVIDER_DFE, ENABLE_DIVIDER_ADC_TEG, ENABLE_DFE, ENABLE_ADC_TEG, OUT_CLK, OUT);
	
       initial begin
	CLK_adc1 <= 0;
	#(5)
	forever begin
	 CLK_adc1 <= 1; #(STEP/2);
	 CLK_adc1 <= 0; #(STEP/2);
	end
	end
      
       initial begin
	CLK_adc2 <= 0;
	#(7.5)
	forever begin
	 CLK_adc2 <= 1; #(STEP/2);
	 CLK_adc2 <= 0; #(STEP/2);
	end
	end

      initial begin
	CLK_adc3 <= 0;
	#(10)
	forever begin
	 CLK_adc3 <= 1; #(STEP/2);
	 CLK_adc3 <= 0; #(STEP/2);
	end
	end

       initial begin
	CLK_adc4 <= 0;
	#(12.5)
	forever begin
	 CLK_adc4 <= 1; #(STEP/2);
	 CLK_adc4 <= 0; #(STEP/2);
	end
	end

	always begin
		CLK_ADC_TEG = 0; #(STEP/2);
		CLK_ADC_TEG = 1; #(STEP/2);
	end

	initial begin
	dc_off_adc1 = 0; dc_off_adc2 = 0; dc_off_adc3 = 0; dc_off_adc4 = 0;
	end

	initial begin
		RES = 0; CLK_adc1 = 0; CLK_adc2 = 0; CLK_adc3 = 0; CLK_adc4 = 0; CLK_ADC_TEG = 0; ENABLE_DIVIDER_DFE = 1; ENABLE_DIVIDER_ADC_TEG = 1; ENABLE_DFE = 1; ENABLE_ADC_TEG = 0;
 		#(STEP/10) RES = 1;
 		#(3*STEP/10) RES = 0;
	end

	initial begin
       IN_DFE_1_p = 0; IN_DFE_1_n = 0; IN_DFE_2_p = 0; IN_DFE_2_n = 0; IN_DFE_3_p = 0; IN_DFE_3_n = 0; IN_DFE_4_p = 0; IN_DFE_4_n = 0; IN_ADC_TEG_p = 0; IN_ADC_TEG_n = 0;
 		#(4*STEP/10+5);
       		$readmemb("./data/CIC_FILTER_SHISAKU2_IN1P.txt",MEM1);
       		$readmemb("./data/CIC_FILTER_SHISAKU2_IN1N.txt",MEM2);
       		$readmemb("./data/CIC_FILTER_SHISAKU2_IN2P.txt",MEM3);
       		$readmemb("./data/CIC_FILTER_SHISAKU2_IN2N.txt",MEM4);
			$readmemb("./data/CIC_FILTER_SHISAKU2_IN3P.txt",MEM5);
       		$readmemb("./data/CIC_FILTER_SHISAKU2_IN3N.txt",MEM6);
       		$readmemb("./data/CIC_FILTER_SHISAKU2_IN4P.txt",MEM7);
       		$readmemb("./data/CIC_FILTER_SHISAKU2_IN4N.txt",MEM8);
			$readmemb("./data/ADC_TEG_p.txt",MEM9);
			$readmemb("./data/ADC_TEG_n.txt",MEM10);
		for(a=0; a<131071; a=a+1) begin
			IN_DFE_1_p = MEM1[a];
			IN_DFE_1_n = MEM2[a];
			IN_DFE_2_p = MEM3[a];
			IN_DFE_2_n = MEM4[a];
	              IN_DFE_3_p = MEM5[a];
			IN_DFE_3_n = MEM6[a];
			IN_DFE_4_p = MEM7[a];
			IN_DFE_4_n = MEM8[a];
			IN_ADC_TEG_p = MEM9[a];
	              IN_ADC_TEG_n = MEM10[a];
			#STEP;
		end
 		#(1*STEP/10);
	  	#(8*STEP);
	 	$finish;
	end
endmodule 
