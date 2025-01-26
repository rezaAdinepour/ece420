LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_adder IS
END tb_adder;
 
ARCHITECTURE behavior OF tb_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    Port ( a, b: in std_logic_vector(3 downto 0);
         c: out std_logic_vector(4 downto 0) );
    END COMPONENT;
    
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   
   signal a, b: std_logic_vector(3 downto 0) := (others => '0');
   signal c: std_logic_vector(4 downto 0) := (others => '0');
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
        a => a,
        b => b,
        c => c
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
      
      a <= "0000";
      b <= "0001";
      wait for 100 ns;
      
      a <= "0010";
      b <= "0011";
      wait for 100 ns;
      
      a <= "0100";
      b <= "0001";
      wait for 100 ns;
      
      a <= "1111";
      b <= "1111";
      wait for 100 ns;
      


      wait;
   end process;

END;