module divider2(D, CLK, Q, ENABLE, QN, RES);

	input D, CLK, RES, ENABLE;
	output QN, Q;
	reg Q;
	
always @(posedge CLK or posedge RES) begin
	if(RES == 1'b1)begin
		Q <= 0;
	end
	else begin 
	if(ENABLE == 1'b1)begin
			Q <= D;
			
	end
	end
	end

	assign QN= ~Q;
	
endmodule
