module multiplexer #(parameter N=1) (
	input [N-1:0] sum_i, subs_i, and_i, or_i, not_i, xor_i, loglefshif_i, aritleftshif_i,logrightshif_i, aritrightshif_i,
F10_i, F11_i, F12_i, F13_i, F14_i, F15_i, 
	input [3:0] selection_i, 
	output [N-1:0] y_o);
	
	logic [N-1:0] Functions [15:0];
	
	assign Functions[0] = sum_i;
	assign Functions[1] = subs_i;
	assign Functions[2] = and_i;
	assign Functions[3] = or_i;
	assign Functions[4] = not_i;
	assign Functions[5] = xor_i;
	assign Functions[6] = loglefshif_i;
	assign Functions[7] = aritleftshif_i;
	assign Functions[8] = logrightshif_i;
	assign Functions[9] = aritrightshif_i;
	assign Functions[10] = F10_i;
	assign Functions[11] = F11_i;
	assign Functions[12] = F12_i;
	assign Functions[13] = F13_i;
	assign Functions[14] = F14_i;
	assign Functions[15] = F15_i;
	
	assign y_o = Functions[selection_i];
		
endmodule
