module Halfadder(sum, carry, a, b); 
input logic a, b; 
output logic sum, carry; 
xor sum1(sum, a, b); 
and carry1(carry, a, b); 
endmodule



module Fulladderblock(fsum, fcarry_out, a, b, c); 
input logic a, b, c; 
output logic fsum, fcarry_out; 

logic half_sum_1, half_carry_1, half_carry_2; 
Halfadder HA1(half_sum_1, half_carry_1, a, b); 
Halfadder HA2(fsum, half_carry_2, half_sum_1, c); 
or or1(fcarry_out, half_carry_2, half_carry_1);
 
endmodule

module Fulladder(Result,carry_o,Num1,Num2,carry_i);
input logic [3:0] Num1;
input logic [3:0] Num2;
input logic carry_i;
output logic carry_o;
output logic [3:0] Result;
logic carry1,carry2,carry3;

Fulladderblock Block1(Result[0],carry1,Num1[0],Num2[0],carry_i);
Fulladderblock Block2(Result[1],carry2,Num1[1],Num2[1],carry1);
Fulladderblock Block3(Result[2],carry3,Num1[2],Num2[2],carry2);
Fulladderblock Block4(Result[3],carry_o,Num1[3],Num2[3],carry3);

endmodule
