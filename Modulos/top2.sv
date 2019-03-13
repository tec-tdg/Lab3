module top2(
	input logic [3:0] Num1,
	input logic [3:0] Num2,
	output logic[6:0] dec_o,
	output logic carry_o
	);
	
	logic[3:0] cont_o;
	
	Fulladder(cont_o, carry_o, Num1,Num2, carry_i);
	//cont_o <= dec_i;
	Decodificador(cont_o, dec_o);
	
endmodule
