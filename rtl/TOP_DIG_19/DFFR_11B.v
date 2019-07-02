module DFFR_11B(D, CLK, RES, Q, QN);

	 parameter BW = 11;

	 input  signed[BW-1:0] D;
	 input CLK, RES;
	 output  signed[BW-1:0] QN,Q;
	 reg  signed[BW-1:0] Q;

	 always @(posedge CLK or posedge RES) begin
		if( RES == 1'b1)
			Q <= 0;
		else
			Q <= D;
	 end
	 
	 assign QN = ~Q;
	 
endmodule
