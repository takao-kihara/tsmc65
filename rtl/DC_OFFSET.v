module DC_OFFSET(IN_adc, IN_offset, OUT);

	 parameter BW = 6;

	 input  signed [BW-1:0] IN_adc;
	 input signed [BW-4:0] IN_offset;
	 output  signed [BW-1:0] OUT;
	 
	 assign OUT = IN_adc + IN_offset;
	 
endmodule
