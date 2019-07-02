module SPI(scs, sdi, sdo, rst, dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4);

	input scs, sdi, rst;
	output sdo;
	output signed [2:0] dc_off_adc1, dc_off_adc2, dc_off_adc3, dc_off_adc4;

	assign sdo = scs;
	assign dc_off_adc1 = sdi;
	assign dc_off_adc2 = sdi;
       assign dc_off_adc3 = sdi;
	assign dc_off_adc4 = sdi;

endmodule 
