library IEEE;
use IEEE.std_logic_1164.all;

entity Decodificador is
port (
	data: in STD_Logic_Vector(3 downto 0);
	segments: out STD_Logic_Vector(6 downto 0)
);
end;

architecture comportamiento of Decodificador is
begin 
with data select segments <=
  "0000001" when X"0",
  "1001111" when X"1",
  "0010010" when X"2",
  "0000110" when X"3",
  "1001100" when X"4",
  "0100100" when X"5",
  "0100000" when X"6",
  "0001111" when X"7",
  "0000000" when X"8",
  "0000100" when X"9",
  "0001000" when "1010",
  "1100000" when "1011",
  "0110001" when "1100",
  "1000010" when "1101",
  "0110000" when "1110",
  "0111000" when "1111",
  "0000000" when others;
end;