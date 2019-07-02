module DEMUX_1to2 (IN, CLK, CLK_B, RES, OUT1, OUT2);

	 parameter BW = 6;

	 input signed [BW+3:0] IN;
	 input CLK, CLK_B, RES;
	 output signed [BW+3:0] OUT1, OUT2;
	 reg signed [BW+3:0] OUT1, OUT2;

	  always @(posedge CLK or posedge RES) begin
		if( RES == 1'b1)
			OUT1 <= 0;
		else
			OUT1 <= IN;
	 end

	  always @(posedge CLK_B or posedge RES) begin
		if( RES == 1'b1)
			OUT2 <= 0;
		else
			OUT2 <= IN;
	 end

endmodule
