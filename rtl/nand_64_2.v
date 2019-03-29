module nand_64_2 (qout,qout_b, nand_out );
  input [31:0] qout;
   input [31:0] qout_b;
   output [63:0] nand_out;
   assign nand_out = ~({qout[31:0], qout_b[31:0]} & {qout_b[30:0], qout[31:0],qout_b[31]});
   
endmodule
