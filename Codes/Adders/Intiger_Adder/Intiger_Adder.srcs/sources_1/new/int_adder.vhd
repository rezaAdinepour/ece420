library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity int_adder is
    generic ( IN_UPPER_BAND: positive := 8; -- or natural insted natural
              OUT_UPPER_BAND: positive := 16 );
             
    Port ( a_in, b_in: in integer range 0 to IN_UPPER_BAND - 1;
           c_out: out integer range 0 to OUT_UPPER_BAND - 1 );
end int_adder;

architecture Behavioral of int_adder is

begin

    c_out <= a_in + b_in;

end Behavioral;
