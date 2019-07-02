module DFFR_6B_4(D, CLK, RES, ENABLE, Q, QN);

	 parameter BW = 6;

	 input  signed[BW-1:0] D;
	 input CLK, RES, ENABLE;
	 output  signed[BW-1:0] QN,Q;
	 reg  signed[BW-1:0] Q;

	 always @(posedge CLK or posedge RES) begin
		if( RES == 1'b1) begin
			Q <= 0;
	 end
	 else begin 
	 if(ENABLE == 1'b1)begin
			Q <= D;
	 end
	 end
	 end
	 
	 assign QN = ~Q;
	 
endmodule
