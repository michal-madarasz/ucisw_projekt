----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:40 04/30/2019 
-- Design Name: 
-- Module Name:    Ball - Behavioral 
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

entity Ball is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           x_cord : in STD_LOGIC_VECTOR (9 downto 0);
           speed : in STD_LOGIC;
           paddle_w: in STD_LOGIC;
           pilka_x : out  STD_LOGIC_VECTOR (9 downto 0);
           pilka_y : out  STD_LOGIC_VECTOR (8 downto 0);
           counter : out STD_LOGIC_VECTOR (63 downto 0)
           );
end Ball;

architecture Behavioral of Ball is

signal pilka_x1: integer range 0 to 640 := 320;
signal pilka_y1: integer range 0 to 480 := 10;
constant pilka_r1: integer := 5;

constant paletka_height: integer  := 10;
constant paletka_y: integer := 450;

constant x_max : integer := 640;
constant x_min : integer := 1;
constant y_max : integer := 480;
constant y_min : integer := 1;

signal clk1s : std_logic := '0';
signal count1s: integer := 0;

signal point_counter : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');

signal moveunit_x : integer := 1;
signal moveunit_y : integer := 1;
begin

clk_div : process(CLK)
begin

   if rising_edge(CLK) then
      count1s <= count1s + 1;
      
      if (count1s = 250000)
      then
         clk1s <= not clk1s;
         count1s <= 0;
      end if;
   end if;

end process;



ballmove : process(clk1s, speed)
variable paletka_width : integer := 80;
begin
      
    if START = '1'
    then
         if rising_edge(clk1s) then
      
         if paddle_w = '1'
         then
            paletka_width := 80;
         else
            paletka_width := 50;
         end if;
        
        pilka_x1 <= pilka_x1 + moveunit_x;
        pilka_y1 <= pilka_y1 + moveunit_y;
        
        if (pilka_x1 - pilka_r1 <= x_min and moveunit_x < 0) or (pilka_x1 + pilka_r1 >= x_max and moveunit_x > 0) then
            moveunit_x <= moveunit_x * (-1);
        end if;
            
        if (pilka_y1 - pilka_r1 <= y_min and moveunit_y < 0) then
            moveunit_y <= moveunit_y * (-1);
        end if;
        
        --sprawdzenie odbicia z paletka
if pilka_x1 + pilka_r1 >= to_integer(unsigned(x_cord)) and
pilka_x1 - pilka_r1 <= to_integer(unsigned(x_cord)) + paletka_width and
pilka_y1 + pilka_r1 >= paletka_y and 
pilka_y1 <= paletka_y + paletka_height and 
moveunit_y > 0 then
            
    moveunit_y <= moveunit_y * (-1);
    point_counter <= std_logic_vector( unsigned(point_counter) + 1 );
    counter <= point_counter;
            
elsif ((pilka_y1 + pilka_r1 >= paletka_y and 
pilka_y1 + pilka_r1 <= paletka_y + paletka_height) or 
(pilka_y1 - pilka_r1 >= paletka_y and 
pilka_y1 - pilka_r1 <= paletka_y + paletka_height) ) and
pilka_x1 + pilka_r1 >= to_integer(unsigned(x_cord)) and 
pilka_x1 - pilka_r1 <= to_integer(unsigned(x_cord)) + paletka_width
and moveunit_y > 0 
        then
            
    moveunit_x <= moveunit_x * (-1);
    point_counter <= std_logic_vector( unsigned(point_counter) + 1 );
    counter <= point_counter;
            
end if;
        
        if speed = '1'
        then
            if moveunit_x = 1
            then
               moveunit_x <= 2;
            elsif moveunit_x = -1
            then
               moveunit_x <= -2;
            end if;
            
            if moveunit_y = 1
            then
               moveunit_y <= 2;
            elsif moveunit_y = -1
            then
               moveunit_y <= -2;
            end if;
        else
            if moveunit_x = 2
            then
               moveunit_x <= 1;
            elsif moveunit_x = -2
            then
               moveunit_x <= -1;
            end if;
            
            if moveunit_y = 2
            then
               moveunit_y <= 1;
            elsif moveunit_y = -2
            then
               moveunit_y <= -1;
            end if;
        end if;
        
        --sprawdzanie przegranej
        if pilka_y1 >= y_max then
           pilka_y1 <= 10;
           pilka_x1 <= 320;
           point_counter <= (others => '0');
           counter <= point_counter;
        end if;
        
        pilka_x <= std_logic_vector(to_unsigned(pilka_x1, pilka_x'length));
        pilka_y <= std_logic_vector(to_unsigned(pilka_y1, pilka_y'length));
        
      end if;     
    end if;
       
end process;

end Behavioral;

