module ALU #(parameter N=1) (
	input [N-1:0] a_i, b_i,
	input [3:0] alucontrol,
	output [N-1:0] result,//To display 7-segments
	output [3:0] output_flags);
	
	logic N,V,C,Z;
	
	
	assign output_flags[3]  = C;
	assign output_flags[2]  = N;
	assign output_flags[1]  = V;
	assign output_flags[0]  = Z;
	
	
	logic bussize[N-1:0];
	
	logic[N-1:0] 
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
	
	
	//Load Adder
	logic c_in_initial = 1b'0;
	Fulladder#N adder(a_i,b_i,c_in_initial,function0,C);
	
	//Load Substraction
	
	//Load OR
	orGate#N ormodule(a_i,b_i,function3);
	
	
	//Load XOR
	xorGate#N xormodule(a_i,b_i,function5);
	
	//Load AND
	andGate#N andmodule(a_i,b_i,function2);
	
	//Load NOT
	notGate#N notmodule (a_i,b_i,function4);
	
	//Load ShiftLeft Logic
	
	
	//Load ShiftRight Logic
	
	
	//Load ShiftLeft Arithmetic
	
	
	//Load ShiftRight Arithmetic
	
	//multiplexer mux();
	
	
	
	
	
	
	
	
	

endmodule
