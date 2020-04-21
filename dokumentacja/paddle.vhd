----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:57 04/30/2019 
-- Design Name: 
-- Module Name:    Paddle - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Paddle is
    Port ( RotL : in  STD_LOGIC;
           RotR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           paddle_w : in STD_LOGIC;
           x_cord : out  STD_LOGIC_VECTOR (9 downto 0));
end Paddle;

architecture Behavioral of Paddle is

signal xpaddle : integer := 240;
signal paddle_vec : integer := 1;

constant x_max : integer := 640;
constant x_min : integer := 0;
constant y_max : integer := 480;
constant y_min : integer := 0;


begin

rot_manager : process(CLK)
variable paddle_width : integer := 80;
begin
   if rising_edge(CLK) then
      if RotL = '1' then
         if xpaddle <= x_min then
            xpaddle <= xpaddle;
         else
            xpaddle <= xpaddle - 10;
         end if;
      end if;
      
      if RotR = '1' then
         if paddle_w = '1'
         then
            paddle_width := 80;
         else
            paddle_width := 50;
         end if;
         
         if xpaddle + paddle_width >= x_max then
            xpaddle <= xpaddle;
         else
            xpaddle <= xpaddle + 10;
         end if;
      end if;
      
      x_cord <= std_logic_vector(to_unsigned(xpaddle, x_cord'length));
   end if;
end process;

end Behavioral;

