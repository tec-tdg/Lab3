module Decoder( input [2:0] values, output[6:0] leds);

	logic [6:0] segments;
	always_comb
	case(values)
		4'b0000:   segments = 7'b0000001 ;
		4'b0001:   segments = 7'b1001111 ;
		4'b0010:   segments = 7'b0010010 ;
		4'b0011:   segments = 7'b0000110 ;
		4'b0100:   segments = 7'b1001100 ;
		4'b0101:   segments = 7'b0100100 ;
		4'b0110:   segments = 7'b0100000 ;
		4'b0111:   segments = 7'b0001111 ;
		4'b1000:   segments = 7'b0000000 ;
		4'b1001:   segments = 7'b0000100 ;
		default:  segments = 7'b0000000;
	endcase
	
	assign leds = segments;

endmodule
