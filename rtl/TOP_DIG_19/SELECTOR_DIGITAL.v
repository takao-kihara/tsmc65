module SELECTOR_DIGITAL (IN_DFE, IN_ADC_TEG_1, IN_ADC_TEG_2, OUT_CLK_DFE, OUT_CLK_ADC_TEG, ENABLE_DFE, ENABLE_ADC_TEG, OUT, OUT_CLK);

	parameter BW = 10;

	input ENABLE_DFE, ENABLE_ADC_TEG;
       input signed [BW-1:0] IN_ADC_TEG_1, IN_ADC_TEG_2;
	input signed [BW+10:0] IN_DFE;
	output signed [BW+10:0] OUT;
	reg signed [BW+10:0] OUT;

	input OUT_CLK_DFE, OUT_CLK_ADC_TEG;
	output OUT_CLK;
	reg OUT_CLK;
	
	reg [1:0] SELECT;
	always @ (ENABLE_DFE or ENABLE_ADC_TEG) begin
	if (ENABLE_DFE == 1 && ENABLE_ADC_TEG == 1) begin
	SELECT = 2'b11;
	end
	else if (ENABLE_DFE == 1) begin
	SELECT = 2'b01;
	end
	else if (ENABLE_ADC_TEG == 1) begin
	SELECT = 2'b10;
	end
	else begin
	SELECT = 0;
	end
	end

	wire signed [BW+10:0] IN_ADC_TEG;
	assign IN_ADC_TEG = $signed({1'b0, IN_ADC_TEG_1, IN_ADC_TEG_2});

	always @ (SELECT or IN_ADC_TEG or IN_DFE) begin
	case(SELECT)
	      2'b00 : OUT <= 0;
	      2'b01 : OUT <= IN_DFE;
	      2'b10 : OUT <= IN_ADC_TEG;
	      2'b11 : OUT <= 0;
	endcase
	end

       always @ (SELECT or OUT_CLK_DFE or OUT_CLK_ADC_TEG) begin
	case(SELECT)
	      2'b00 : OUT_CLK <= 0;
	      2'b01 : OUT_CLK <= OUT_CLK_DFE;
	      2'b10 : OUT_CLK <= OUT_CLK_ADC_TEG;
	      2'b11 : OUT_CLK <= 0;
	endcase
	end

endmodule
