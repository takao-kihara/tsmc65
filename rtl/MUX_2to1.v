module MUX_2to1 (IN1, IN2, CLK, RES, OUT);

	 parameter BW = 6;

	 input signed [BW+14:0] IN1, IN2;
	 input CLK, RES;
	 output signed [BW+14:0] OUT;

	 reg signed [BW+14:0] OUT1, OUT2;

	  always @(posedge CLK or posedge RES) begin
		if( RES == 1'b1) begin
			OUT1 <= 0;
			OUT2 <= 0;
		end
		else begin
			OUT1 <= IN1;
			OUT2 <= IN2;
	 end
	 end

	assign OUT = CLK ? OUT1 : OUT2;

endmodule
