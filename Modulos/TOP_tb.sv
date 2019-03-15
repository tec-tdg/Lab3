module TOP_tb();

	logic [2:0] a_operand;
	logic [2:0] b_operand;
	logic [2:0] result_operation;
	
	logic [3:0] alucontrol_values;
	logic [3:0] flags_values;
	
	logic [6:0] segments_values;
	
	//dut(a_operand,b_operand,AluControl,result,flags);
	ALU#3 alu_dut(a_operand,b_operand,alucontrol_values,result_operation,flags_values);
	
	Decoder deco_dut(result_operation,segments_values);
	
	initial begin
		assign a_operand = 3'b000;
		assign b_operand = 3'b000;
		assign alucontrol_values = 4'b0000; // 000 + 000 = 000
		#10;
		assert(result_operation === 3'b000 &&  segments_values === 7'b0000001) $display ("Suma: 000 + 000 = 000 ok"); else $error("Suma failed");
	
	end
	
	

endmodule
