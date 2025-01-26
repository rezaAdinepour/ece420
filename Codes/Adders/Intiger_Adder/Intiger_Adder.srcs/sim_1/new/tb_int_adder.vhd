LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_int_adder IS
END tb_int_adder;
 
ARCHITECTURE behavior OF tb_int_adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT int_adder
    generic (IN_UPPER_BAND: positive := 8;
             OUT_UPPER_BAND: positive := 16 );
             
    Port ( a_in, b_in: in integer range 0 to IN_UPPER_BAND - 1;
           c_out: out integer range 0 to OUT_UPPER_BAND - 1 );
    END COMPONENT;
    
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   
   signal a_in: integer range 0 to 7 := 0;
   signal b_in: integer range 0 to 7 := 0;
   signal c_out: integer range 0 to 15 := 0;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: int_adder PORT MAP (
        a_in => a_in,
        b_in => b_in,
        c_out => c_out
 );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
      
      a_in <= 5;
      b_in <= 1;
      wait for 100 ns;
      
      a_in <= 4;
      b_in <= 3;
      wait for 100 ns;
      
      a_in <= 1;
      b_in <= 1;
      wait for 100 ns;
      
      a_in <= 10;
      b_in <= 12;
      wait for 100 ns;
      
      a_in <= 8;
      b_in <= 7;
      wait for 100 ns;
      

      wait;
   end process;

END;