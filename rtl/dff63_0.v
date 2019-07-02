module dff63_0 (d,clk,q );
input [63:0] d;
   input clk;

   output [63:0] q;
   reg 	[63:0] q;

     always@(posedge clk )begin
			q <= d;
     end
   
endmodule
