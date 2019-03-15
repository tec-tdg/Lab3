module ZeroFlag_tb();

	logic [2:0] values;
	logic flag;
	ZeroFlag#3 dut(values,flag);
	
	initial begin
		values=3'b000; #10;
		assert(flag===1'b1) $display (" zero 000 ok"); else $error("000 value failed");
		
		values=3'b001; #10;
		assert(flag===1'b0) $display (" zero 001 ok"); else $error("001 value failed");
	
	end
	

endmodule
