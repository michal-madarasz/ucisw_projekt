----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:43 03/19/2019 
-- Design Name: 
-- Module Name:    vga_module - Behavioral 
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

entity vga_module is
    Port ( x_cord : in  STD_LOGIC_VECTOR (9 downto 0);
           pilka_x : in  STD_LOGIC_VECTOR (9 downto 0);
           paddle_w : in STD_LOGIC;
           pilka_y : in  STD_LOGIC_VECTOR (8 downto 0);
           CLK : in  STD_LOGIC;
           darkmode : in STD_LOGIC;
           VGA_HS : out  STD_LOGIC;
           VGA_VS : out  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end vga_module;

architecture Behavioral of vga_module is

constant h_size : integer := 799;
constant v_size : integer := 525;

constant h_front : integer := 16;
constant h_sync : integer := 96;
constant h_back : integer := 48;

constant v_front : integer := 10;
constant v_sync : integer := 2;
constant v_back : integer := 29;


--TYMCZASOWO STAŁE _ FIGURY
--constant paletka_x: integer := h_back + h_sync + 640/2 - 40;
constant paletka_y: integer := v_back + v_sync + 450;
constant paletka_height: integer  := 10;


constant pilka_r1: integer := 5;

signal clk25 : std_logic := '0';
signal clk1s : std_logic := '0';
signal count1s: integer := 1;


signal h_counter: integer range 0 to 799 := 0;
signal v_counter: integer range 0 to 525 := 0;
begin

clk_div : process(CLK)
begin

   if rising_edge(CLK) then
      clk25 <= not clk25;
      count1s <= count1s + 1;
      
      if (count1s = 250000)
      then
         clk1s <= not clk1s;
         count1s <= 1;
      end if;
   end if;

end process;

counters : process(clk25)
begin

   if rising_edge(clk25) then
    
      
      if h_counter >= h_size then
         h_counter <= 0;    
         
         if v_counter >= v_size then
            v_counter <= 0;
         else
            v_counter <= v_counter + 1;
         end if;
         
      else
         h_counter <= h_counter + 1;  
      end if;
      

      
   end if;

end process;

horizontal_sync : process(h_counter)
begin

   if h_counter >= 0 and h_counter <= h_sync then
      VGA_HS <= '0';
   
   else
      VGA_HS <= '1';
      
   end if;

end process;

vertical_sync : process(v_counter)
begin

   if v_counter >= 0 and v_counter <= v_sync then
      VGA_VS <= '0';  
   
   else
      VGA_VS <= '1';
      
   end if;

end process;



color : process(h_counter, v_counter, pilka_x, pilka_y, x_cord)
  variable pilka_x1: integer;
  variable pilka_y1: integer;
  variable x_cord1: integer;
  variable paletka_width : integer := 80;
begin
  
   pilka_x1 := to_integer(unsigned(pilka_x));
   pilka_y1 := to_integer(unsigned(pilka_y));
   x_cord1 := to_integer(unsigned(x_cord));
   
      if paddle_w = '1'
         then
            paletka_width := 80;
         else
            paletka_width := 50;
         end if;
   
   
   if h_counter > h_back + h_sync and h_counter < h_size - h_front and 
   v_counter > v_back + v_sync and v_counter < v_size - v_front then
     
     --rysowanie paletki
     if h_counter >= h_back + h_sync + x_cord1 and
     h_counter <= h_back + h_sync + x_cord1 + paletka_width and
     v_counter >= paletka_y and v_counter <= paletka_y + paletka_height then
         
         RGB <= "001";
     
     --rysowanie pilki
     elsif h_counter >= pilka_x1 - pilka_r1 + h_back + h_sync and 
     h_counter <= pilka_x1 + pilka_r1 + h_back + h_sync and
     v_counter >= pilka_y1 - pilka_r1 + v_back + v_sync and
     v_counter <= pilka_y1 + pilka_r1 + v_back + v_sync then
     
         RGB <= "100";

     else 
        if darkmode = '1' then
            RGB <= "000";
        else
            RGB <= "111";
        end if;
     end if;
     
   else 
      RGB <= "000";
   end if;


end process;

end Behavioral;

