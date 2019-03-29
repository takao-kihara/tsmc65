//`include "DFFR_6B.v"

module TI_POLYPHASE_PATH8X2 (CLK, RES, IN1, IN2, IN3, IN4, IN5, IN6, IN7, IN8, OUT1, OUT2);

	 parameter BW = 6;

	 input CLK, RES;
	 input signed [BW-1:0] IN1, IN2, IN3, IN4, IN5, IN6, IN7, IN8;
	 output signed [BW+4:0] OUT1, OUT2; 

	 wire signed [BW-1:0] IN1_Z, IN3_Z, IN5_Z, IN7_Z;
	 wire signed [BW-1:0] IN2_Z, IN4_Z, IN6_Z;
	 wire signed [BW-1:0] ON1, ON2, ON3, ON4, ON5, ON6, ON7;

	 DFFR_6B DFF_2_1 (IN1, CLK, RES, IN1_Z, ON1),
	         DFF_2_2 (IN2, CLK, RES, IN2_Z, ON2),
		  DFF_2_3 (IN3, CLK, RES, IN3_Z, ON3),
	         DFF_2_4 (IN4, CLK, RES, IN4_Z, ON4),
	         DFF_2_5 (IN5, CLK, RES, IN5_Z, ON5),
	         DFF_2_6 (IN6, CLK, RES, IN6_Z, ON6),
	         DFF_2_7 (IN7, CLK, RES, IN7_Z, ON7);

	wire	signed	[BW+2:0]	CIC_OUT_I1; 
	assign CIC_OUT_I1 = 1*IN1 + 7*IN1_Z;

	wire	signed	[BW+2:0]	CIC_OUT_I2; 
	assign CIC_OUT_I2 = 5*IN5 + 3*IN5_Z;

	wire	signed	[BW+2:0]	CIC_OUT_I3; 
	assign CIC_OUT_I3 = 3*IN3 + 5*IN3_Z;

	wire	signed	[BW+2:0]	CIC_OUT_I4; 
	assign CIC_OUT_I4 = 7*IN7 + 1*IN7_Z;

	assign	OUT1 = CIC_OUT_I1 + CIC_OUT_I2 + CIC_OUT_I3 + CIC_OUT_I4;

	wire	signed	[BW+2:0]	CIC_OUT_Q1;
	assign	CIC_OUT_Q1 = 2*IN2 + 6*IN2_Z;

	wire	signed	[BW+2:0]	CIC_OUT_Q2;
	assign	CIC_OUT_Q2 = 6*IN6 + 2*IN6_Z;

	wire	signed	[BW+2:0]	CIC_OUT_Q3;
	assign	CIC_OUT_Q3 = 4*IN4 + 4*IN4_Z;

	wire	signed	[BW+2:0]	CIC_OUT_Q4;
	assign	CIC_OUT_Q4 = 8*IN8;	

	assign	OUT2 = CIC_OUT_Q1 + CIC_OUT_Q2 + CIC_OUT_Q3 + CIC_OUT_Q4;

endmodule
