module nand_nor ( in,aout,bout,cout);
   input [3:0] in;
   output [1:0] aout;
   output 	bout;
   output 	cout;
   wire 	y;
   
   assign aout= {in[3],in[1]};
   nand(bout,in[3],in[2]);
   nand(y,in[1],in[0]);
   nor(cout,bout,y);
endmodule
