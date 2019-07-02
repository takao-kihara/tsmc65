module POLYPHASE_PATH4X2 (CLK, RES, IN1, IN2, IN3, IN4, OUT);

	 parameter BW = 11;

	 input CLK, RES;
	 input signed [BW-1:0] IN1, IN2, IN3, IN4;
	 output signed [BW+3:0] OUT; 

	 wire signed [BW-1:0] IN1_Z, IN2_Z, IN3_Z;
	 wire signed [BW-1:0] ON1, ON2, ON3;

	 DFFR_11B DFF_2_1 (IN1, CLK, RES, IN1_Z, ON1),
		   DFF_2_2 (IN2, CLK, RES, IN2_Z, ON2),
		   DFF_2_3 (IN3, CLK, RES, IN3_Z, ON3);

	 wire signed [BW+1:0] CIC_OUT_1;
	 assign CIC_OUT_1 = 1*IN1 + 3*IN1_Z;

	 wire signed [BW+1:0] CIC_OUT_2;
	 assign CIC_OUT_2 = 3*IN2 + 1*IN2_Z;

	 wire signed [BW+1:0] CIC_OUT_3;
	 assign CIC_OUT_3 = 2*IN3 + 2*IN3_Z;

	 wire signed [BW+1:0] CIC_OUT_4;
	 assign CIC_OUT_4 = 4*IN4;
	         
	 assign OUT = CIC_OUT_1 + CIC_OUT_2 + CIC_OUT_3 + CIC_OUT_4; 
	 
endmodule
