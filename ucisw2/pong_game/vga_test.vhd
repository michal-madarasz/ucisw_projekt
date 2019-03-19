--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:57:40 03/19/2019
-- Design Name:   
-- Module Name:   F:/ucisw2/pong_game/vga_test.vhd
-- Project Name:  pong_game
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_module
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY vga_test IS
END vga_test;
 
ARCHITECTURE behavior OF vga_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_module
    PORT(
         x_cord : IN  std_logic_vector(9 downto 0);
         pilka_x : IN  std_logic_vector(9 downto 0);
         pilka_y : IN  std_logic_vector(8 downto 0);
         CLK : IN  std_logic;
         VGA_HS : OUT  std_logic;
         VGA_VS : OUT  std_logic;
         RGB : OUT  std_logic_vector(2 downto 0);
         odbicie_x : OUT  std_logic;
         odbicie_y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x_cord : std_logic_vector(9 downto 0) := (others => '0');
   signal pilka_x : std_logic_vector(9 downto 0) := (others => '0');
   signal pilka_y : std_logic_vector(8 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal VGA_HS : std_logic;
   signal VGA_VS : std_logic;
   signal RGB : std_logic_vector(2 downto 0);
   signal odbicie_x : std_logic;
   signal odbicie_y : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_module PORT MAP (
          x_cord => x_cord,
          pilka_x => pilka_x,
          pilka_y => pilka_y,
          CLK => CLK,
          VGA_HS => VGA_HS,
          VGA_VS => VGA_VS,
          RGB => RGB,
          odbicie_x => odbicie_x,
          odbicie_y => odbicie_y
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
