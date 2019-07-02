module divider1(D, CLK, Q, QN, RES);

	input D, CLK, RES;
	output QN, Q;
	reg Q;
	
always @(posedge CLK or posedge RES) begin
	if(RES == 1'b1)
		Q <= 0;
		else
			Q <= D;
			
	end

	assign QN= ~Q;
	
endmodule