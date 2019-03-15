module TOP( 
	input [2:0] a_op, b_op, 
	input [3:0] alucontrol,
	output [3:0] flags_leds,
	output [6:0] result_segments);
	
	logic [2:0] result_op;
	
	//dut(a_operand,b_operand,AluControl,result,flags);
	ALU#3 dalu(a_op,b_op,alucontrol,result_op,flags_leds);
	
	
	 
	
	Decoder deco(result_op,result_segments);
endmodule
