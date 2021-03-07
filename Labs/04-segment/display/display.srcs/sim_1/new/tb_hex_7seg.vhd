----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2021 04:11:41
-- Design Name: 
-- Module Name: tb_hex_7seg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_hex_7seg is
--  Port ( );
end tb_hex_7seg;

architecture Behavioral of tb_hex_7seg is

    signal s_hex       : std_logic_vector(4 - 1 downto 0);
    signal s_seg       : std_logic_vector(7 - 1 downto 0);

begin
-- Connecting testbench signals with Two-bit wide 4-to-1 multiplexer. entity (Unit Under Test)
    uut_hex_7seg : entity work.hex_7seg
        port map(
            hex_i             => s_hex, --v pravo vzdy signaly na jednotke/design
            seg_o             => s_seg --sipka vzdy rovnaka
        );
--------------------------------------------------------------------
-- Data generation process
--------------------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the begining of stimulus process
        report "Stimulus process started" severity note;
               
        
        s_hex  <= "0000"; wait for 100 ns;--process specificky pre testbench
        s_hex  <= "0001"; wait for 100 ns;
        s_hex  <= "0010"; wait for 100 ns;
        s_hex  <= "0011"; wait for 100 ns;
        s_hex  <= "0100"; wait for 100 ns;
        s_hex  <= "0101"; wait for 100 ns;  
        s_hex  <= "0110"; wait for 100 ns; 
        s_hex  <= "0111"; wait for 100 ns;  
        s_hex  <= "1000"; wait for 100 ns;
        s_hex  <= "1001"; wait for 100 ns;
        s_hex  <= "1010"; wait for 100 ns;      
        s_hex  <= "1011"; wait for 100 ns;
        s_hex  <= "1100"; wait for 100 ns;   
        s_hex  <= "1101"; wait for 100 ns;  
        s_hex  <= "1110"; wait for 100 ns;
        s_hex  <= "1111"; wait for 100 ns; 
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
end Behavioral;
