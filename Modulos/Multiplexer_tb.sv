module Multiplexer_tb();

//entradas

logic[3:0] 
	function0, /*Adder*/
	function1, /*Substraction*/
	function2, /*AND*/
	function3, /*OR*/
	function4, /*NOT*/
	function5, /*XOR*/
	function6, /*LOGIC LEFT SHIFT*/
	function7, /*Arithmetic LEFT SHIFT*/
	function8, /*Logic Right SHIFT*/
	function9, /*Arithmetic Right SHIFT*/
	function10,function11, function12,function13,function14,function15;

	
	
	
logic [3:0] AluControl; 


//salidas
logic [3:0] result;



multiplexer#4 dut(function0,function1,function2,
	function3,function4,function5,function6,function7,
	function8,function9,function10,function11,function12,
	function13,function14,function15,AluControl,result);

initial begin
	function0=4'b0000; 
	function1=4'b0001; 
	function2=4'b0010;
	function3=4'b0011;
	function4=4'b0100; 
	function5=4'b0101; 
	function6=4'b0110; 
	function7=4'b0111;
	function8=4'b1000;
	function9=4'b1001; 
	function10=4'b1010;
	function11=4'b1011;
	function12=4'b1100; 
	function13=4'b1101; 
	function14=4'b1110;
	function15=4'b1111; 
	
	AluControl=4'b0000;  #10;
	assert(result===4'b0000 ) $display ("  1st value ok"); else $error("1st value failed");
	
	AluControl=4'b0001;  #10;
	assert(result===4'b0001 ) $display ("  2nd value ok"); else $error("2nd value failed");
	
	AluControl=4'b0010;  #10;
	assert(result===4'b0010 ) $display ("  3rd value ok"); else $error("3rd value failed");
	
	AluControl=4'b0011;  #10;
	assert(result===4'b0011 ) $display ("  4th value ok"); else $error("4th value failed");
	
	AluControl=4'b0100;  #10;
	assert(result===4'b0100 ) $display ("  5th value ok"); else $error("5th value failed");
	
	AluControl=4'b0101;  #10;
	assert(result===4'b0101 ) $display ("  6th value ok"); else $error("6th value failed");
	
	AluControl=4'b0110;  #10;
	assert(result===4'b0110 ) $display ("  7th value ok"); else $error("7th value failed");
	
	AluControl=4'b0111;  #10;
	assert(result===4'b0111 ) $display ("  8th value ok"); else $error("8th value failed");
	
	AluControl=4'b1000;  #10;
	assert(result===4'b1000 ) $display ("  9th value ok"); else $error("9th value failed");
	
	AluControl=4'b1001;  #10;
	assert(result===4'b1001 ) $display ("  10th value ok"); else $error("10th value failed");
	
	AluControl=4'b1010;  #10;
	assert(result===4'b1010 ) $display ("  11th value ok"); else $error("11th value  failed");
	
	AluControl=4'b1011;  #10;
	assert(result===4'b1011 ) $display ("  12th value ok"); else $error("12th value failed");
	
	AluControl=4'b1100;  #10;
	assert(result===4'b1100 ) $display ("  13th value ok"); else $error("13th value failed");
	
	AluControl=4'b1101;  #10;
	assert(result===4'b1101 ) $display ("  14th value ok"); else $error("14th value failed");
	
	AluControl=4'b1110;  #10;
	assert(result===4'b1110 ) $display ("  15th value ok"); else $error("15th value failed");
	
	AluControl=4'b1111;  #10;
	assert(result===4'b1111 ) $display ("  16th value ok"); else $error("16th value failed");

end

endmodule 