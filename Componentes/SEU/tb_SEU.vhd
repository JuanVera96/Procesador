--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:00:49 10/04/2016
-- Design Name:   
-- Module Name:   C:/Users/JArango/Desktop/Arquitectura/SEU/tb_SEU.vhd
-- Project Name:  SEU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_SEU IS
END tb_SEU;
 
ARCHITECTURE behavior OF tb_SEU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEU
    PORT(
         A : IN  std_logic_vector(12 downto 0);
         S : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEU PORT MAP (
          A => A,
          S => S
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		A <= "0000000100000";
      wait for 20 ns;
		A <= "1111111110111";
      wait;
   end process;

END;
