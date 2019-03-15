module ALU_tb();

//entradas

logic [2:0] a_operand;
logic [2:0] b_operand;
logic [3:0] AluControl;

//salidas

logic [2:0] result;
logic [3:0] flags;

ALU#3 dut(a_operand,b_operand,AluControl,result,flags);

initial begin
	a_operand=3'b000; b_operand=3'b001; AluControl=4'b0000; #10;
	assert(result===3'b001 ) $display ("Suma: 000 + 001 ok"); else $error("Suma failed");
	
	a_operand=3'b001; b_operand=3'b001; AluControl=4'b0001; #10;
	assert(result===3'b000 ) $display ("Resta: 001 - 001 ok"); else $error("Resta failed");
	
	a_operand=3'b010; b_operand=3'b001; AluControl=4'b0010; #10;
	assert(result===3'b000 ) $display ("And: 010 & 001 ok"); else $error("And failed");
	
	a_operand=3'b010; b_operand=3'b001; AluControl=4'b0011; #10;
	assert(result===3'b011 ) $display ("Or: 010 || 001 ok"); else $error("Or failed");
	
	a_operand=3'b010; b_operand=3'b001; AluControl=4'b0100; #10;
	assert(result===3'b101 ) $display ("Not 010 ok"); else $error("Not failed");

	a_operand=3'b010; b_operand=3'b001; AluControl=4'b0101; #10;
	assert(result===3'b011 ) $display ("Xor ok"); else $error("Xor failed");
	
	a_operand=3'b010; b_operand=3'b001; AluControl=4'b0110; #10;
	assert(result===3'b100 ) $display ("Shift Left Logical ok"); else $error("Shift Left Logical failed");
	
	a_operand=3'b010; b_operand=3'b001; AluControl=4'b1000; #10;
	assert(result===3'b001 ) $display ("Shift Right Logical ok"); else $error("Shift Right Logical failed");
	
	a_operand=3'b010; b_operand=3'b001; AluControl=4'b0111; #10;
	assert(result===3'b100 ) $display ("Shift Left Arithmetic ok"); else $error("Shift Left Arithmetic failed");
	
	a_operand=3'b010; b_operand=3'b001; AluControl=4'b1001; #10;
	assert(result===3'b001 ) $display ("Shift Right Arithmetic ok"); else $error("Shift Right Arithmetic failed");
	


end

endmodule 