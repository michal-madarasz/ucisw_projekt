--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main_scheme.vhf
-- /___/   /\     Timestamp : 03/19/2019 12:47:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl F:/ucisw2/pong_game/main_scheme.vhf -w F:/ucisw2/pong_game/main_scheme.sch
--Design Name: main_scheme
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main_scheme is
   port ( CLK    : in    std_logic; 
          RGB    : out   std_logic_vector (2 downto 0); 
          VGA_HS : out   std_logic; 
          VGA_VS : out   std_logic);
end main_scheme;

architecture BEHAVIORAL of main_scheme is
   signal XLXI_1_pilka_x_openSignal : std_logic_vector (9 downto 0);
   signal XLXI_1_pilka_y_openSignal : std_logic_vector (8 downto 0);
   signal XLXI_1_x_cord_openSignal  : std_logic_vector (9 downto 0);
   component vga_module
      port ( CLK       : in    std_logic; 
             x_cord    : in    std_logic_vector (9 downto 0); 
             pilka_x   : in    std_logic_vector (9 downto 0); 
             pilka_y   : in    std_logic_vector (8 downto 0); 
             VGA_HS    : out   std_logic; 
             VGA_VS    : out   std_logic; 
             odbicie_x : out   std_logic; 
             odbicie_y : out   std_logic; 
             RGB       : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   XLXI_1 : vga_module
      port map (CLK=>CLK,
                pilka_x(9 downto 0)=>XLXI_1_pilka_x_openSignal(9 downto 0),
                pilka_y(8 downto 0)=>XLXI_1_pilka_y_openSignal(8 downto 0),
                x_cord(9 downto 0)=>XLXI_1_x_cord_openSignal(9 downto 0),
                odbicie_x=>open,
                odbicie_y=>open,
                RGB(2 downto 0)=>RGB(2 downto 0),
                VGA_HS=>VGA_HS,
                VGA_VS=>VGA_VS);
   
end BEHAVIORAL;


