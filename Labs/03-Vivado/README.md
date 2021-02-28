# Lab 3: Introduction to Vivado

## Part One
### Table with connection of 16 slide switches and 16 LEDs on Nexys A7 board

|  **Switch**    |**Connection**|    **LED**   |**Connection**|
| 	:-:	 | 	:-: 	|      :-:     |      :-:     |
| 	SW0	 | 	J15     |     LED0     |      H17     |
| 	SW1	 | 	L16     |     LED1     |      K15     |
| 	SW2	 |      M13     |     LED2     |      J13     |
| 	SW3	 |      R15     |     LED3     |      N14     |
| 	SW4	 |      R17     |     LED4     |      R18     |
| 	SW5	 |      T18     |     LED5     |      V17     |
| 	SW6	 |      U18     |     LED6     |      U17     |
| 	SW7	 |      R13     |     LED7     |      U16     |
| 	SW8	 |      T8      |     LED8     |      V16     |
| 	SW9	 | 	U8      |     LED9     |      T15     |
| 	SW10	 | 	R16     |     LED10    |      U14     |
| 	SW11	 |      T13     |     LED11    |      T16     |
| 	SW12	 |      H6      |     LED12    |      V15     |
| 	SW13	 |      U12     |     LED13    |      V14     |
| 	SW14	 |      U11     |     LED14    |      V12     |
| 	SW15	 |      V10     |     LED15    |      V11     |

## Part Two	
### Two-bit wide 4-to-1 multiplexer

#### VHDL architecture from source file `mux_2bit_4to1.vhd`
```vhdl
architecture Behavioral of mux_2bit_4to1 is
begin

    f_o <= a_i when (sel_i="00") else
           b_i when (sel_i="01") else
           c_i when (sel_i="10") else
           d_i;

end architecture Behavioral;
```

#### VHDL stimulus process from testbench file `tb_mux_2bit_4to1.vhd` 
```vhdl
    p_stimulus : process
    begin
        -- Report a note at the begining of stimulus process
        report "Stimulus process started" severity note;
               
        
        s_d   <= "00"; s_c <= "00"; s_b <= "00"; s_a <= "00";
        s_sel <= "00"; wait for 50 ns;

        s_a   <= "00"; wait for 50 ns;
        s_b   <= "01"; wait for 50 ns;
        
        s_sel <= "01"; wait for 50 ns;
        s_c   <= "00"; wait for 50 ns;
        s_b   <= "11"; wait for 50 ns;
        
        s_d   <= "10"; s_c <= "11";s_b <= "01";s_a <= "00";
        s_sel <= "10";wait for 50 ns;
        
        s_d   <= "00"; s_c <= "00";s_b <= "00";s_a <= "01";
        s_sel <= "10"; wait for 50 ns;
         
        s_d   <= "10"; s_c <= "11";s_b <= "01";s_a <= "00";
        s_sel <= "11"; wait for 50 ns;
        
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
```

#### Screenshot with simulated time waveforms
![Output Screenshot](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/OUTPUT%20screenshot.png)

## Part Three
### A Vivado tutorial

#### Project creation
##### 1.Step

![1.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/1.png)

or alternatively

![1.Step_alternate](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/1_alternative.png)

##### 2.Step

![2.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/2.png)

##### 3.Step

![3.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/3.png)

##### 4.Step

![4.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/4.png)

##### 5.Step

![5.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/5.png)

##### 6.Step

![6.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/6.png)

##### 7.Step

![7.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/7.png)

##### 8.Step

![8.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/8.png)

##### 9.Step

![9.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/9.png)

##### 10.Step

![10.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/10.png)

#### Adding source file

##### 1.Step

![1.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_Source_File/1.png)

##### 2.Step

![1.Step_alternate](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_Source_File/1_alternate.png)

#### Adding testbench file

![1.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/1.png)

##### 2.Step

![2.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/2png)

##### 3.Step

![3.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/3.png)

##### 4.Step

![4.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/4.png)

##### 5.Step

![5.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/5.png)

##### 6.Step

![6.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/6.png)

#### Running simulation


#### Adding XDC constraints file


