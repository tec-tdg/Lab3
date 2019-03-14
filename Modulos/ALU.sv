module ALU #(parameter N=1) (
	input [N-1:0] a_i, b_i,
	input [3:0] alucontrol,
	output [N-1:0] result,//To display 7-segments
	output [3:0] output_flags);
	
	logic Ne,V,C,Z;
	
	
	assign output_flags[3]  = C;
	assign output_flags[2]  = Ne;
	assign output_flags[1]  = V;
	assign output_flags[0]  = Z;
	
	//OR con salida que entra XOR que tambien recibe B
	
	logic or_out;
	assign or_out=alucontrol[0]| alucontrol[1]| alucontrol[2]| alucontrol[3] ;
	
	
	
	
	//XOR de la salida del or y B
	
	logic [N-1:0] array_or_out;
	
	//se hace array con las salidas del or para hacer 1 a 1
	genvar i;
	
	generate 
		for (i = 0; i < N; i = i+1) begin:forloop
			assign array_or_out[i]= or_out;
		end
	
	endgenerate
	//se crea B prima
	
	logic [N-1:0] b_i_prima;
	
	xorGate#N xor_out(b_i,array_or_out,b_i_prima);
	
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
	//logic c_in_initial = 1'b0;
	Fulladder#N adder(a_i,b_i_prima,or_out,function0,C);
	
	//Load Substraction
	
	//Load OR
	orGate#N ormodule(a_i,b_i,function3);
	
	
	//Load XOR
	xorGate#N xormodule(a_i,b_i,function5);
	
	//Load AND
	andGate#N andmodule(a_i,b_i,function2);
	
	//Load NOT
	notGate#N notmodule(a_i,function4);
	
	//Load ShiftLeft Logic
	shiftLeftLog#N shiftleftlogmodule(a_i,b_i,function6);
	
	//Load ShiftRight Logic
	shiftRightLog#N shiftrightlogmodule(a_i,b_i,function8);
	
	//Load ShiftLeft Arithmetic
	shiftLeftArit#N shiftleftaritmodule(a_i,b_i,function7);
	
	//Load ShiftRight Arithmetic
	shiftRightArit#N shiftrightaritmodule(a_i,b_i,function9);
	
	//multiplexer mux();
	multiplexer#N muxmodule(function0,function1,function2,
	function3,function4,function5,function6,function7,
	function8,function9,function10,function11,function12,
	function13,function14,function15,alucontrol,result);
	
	
	
	
	
	
	
	

endmodule
