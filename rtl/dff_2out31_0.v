module dff_2out31_0 (d,clk,q,qb );
   input [31:0] d;
   input clk;
   output [31:0] q;
   output [31:0] qb;
   reg 	[31:0]  q;
   reg 	[31:0]  qb;
   
   always @(posedge clk)begin
      q <= d;
      qb <= ~d;
      
      end
endmodule
