library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity main is
  Port ( a, b: in std_logic_vector(3 downto 0);
         c: out std_logic_vector(4 downto 0) );
end main;

architecture Behavioral of main is
    signal a_temp, b_temp: unsigned(4 downto 0);
begin

    a_temp <= unsigned('0' & a);
    b_temp <= unsigned('0' & b);
    
    c <= std_logic_vector(a_temp + b_temp);

    -- c <= std_logic_vector('0' & (unsigned(a) + unsigned(b)));
    
end Behavioral;