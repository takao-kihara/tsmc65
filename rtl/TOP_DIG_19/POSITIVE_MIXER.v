module POSITIVE_MIXER (IN, OUT);

	 parameter BW = 6;

	 input  signed [BW-1:0] IN;
	 output signed [BW-1:0] OUT; 

	 assign OUT = 1*IN; 
	
	 
endmodule
