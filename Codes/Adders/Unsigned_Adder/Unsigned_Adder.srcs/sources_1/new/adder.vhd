library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity adder is
  Port ( a, b: in std_logic_vector(3 downto 0);
         c: out std_logic_vector(4 downto 0) );
end adder;

architecture Behavioral of adder is
    signal a_temp, b_temp: unsigned(4 downto 0);
begin
    
    -- concat 0 for matching size
    a_temp <= unsigned('0' & a);
    b_temp <= unsigned('0' & b);
    
    c <= std_logic_vector(a_temp + b_temp);
    
end Behavioral;