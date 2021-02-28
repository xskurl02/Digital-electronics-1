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

### Project creation

#### 1.Step
Click on Create Project button on Quick Start menu  

![1.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/1.png)

or alternatively go to File->Project->New

![1.Step_alternate](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/1_alternative.png)

#### 2.Step
Click on the highlighted next button
![2.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/2.png)

#### 3.Step
Input what you would like your project to be called (arrow with number 1) and click next (arrow with number 2)
Advice: Try to avoid using spaces in project names
![3.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/3.png)

#### 4.Step
Make sure you select the RTL project only (arrow with number 1) and click Next (arrow with number 2)
![4.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/4.png)

#### 5.Step
Click on create file button (arrow with number 1), input what you would like your file to be called (arrow with number 2) once done click OK (arrow with number 3) and click Next (arrow with number 4)
Advice: Dont forget to select what file type you want to use, in this tutorial we use VHDL 
![5.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/5.png)

#### 6.Step
This step is optional and not a part of this tutorial, click next to continue
![6.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/6.png)

#### 7.Step
Go to the boards section of menu bar (arrow with number 1), select Nexys A7-50T from the list (arrow with number 2), click next (arrow with number 3)
![7.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/7.png)

##### 8.Step
This menu shows your project summary,you can see your project configuration here, if you configured your project correctly click Finish 
![8.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/8.png)

##### 9.Step
In this menu Vivado lets you configure your design file input and output, you can always add them manually later. Once done click OK
![9.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/9.png)

##### 10.Step
In case that you didnt do any changes to the configuration this window will pop up, click yes to confirm 
![10.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Project_Creation/10.png)

#### Adding source file

##### 1.Step
Click on the add source in the project manager menu
![1.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_Source_File/1.png)

or go to File->Add Sources

![1.Step_alternate](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_Source_File/1_alternate.png)

#### Adding testbench file

##### 1.Step
Once in the add source wizard, select Add or create simulation sources (arrow with number 1) then click Next (arrow with number 2) 
![1.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/1.png)

##### 2.Step
Click on Create file button (arrow with number 1), input what you would like your file to be called (arrow with number 2) and click OK (arrow with number 3)
Advice: its recommended to use tb_ at the beginning of the file name 
![2.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/2.png)

##### 3.Step
Once done adding source file (arrow with number 1), click Next(arrow with number 2)
![3.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/3.png)

##### 4.Step
In this menu Vivado lets you configure your design file input and output, once done click OK
![4.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/4.png)

##### 5.Step
In case that you didnt do any changes to the configuration this window will pop up, click yes to confirm 
![5.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/5.png)

##### Output showcase

![output](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Adding_TB_file/6.png)

#### Running simulation

##### 1.Step
Click on the Run Simulation in the Project Manager menu, then click on Run Behavioral Simulation
![1.Step](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Simulation/1.png)

or  go to Flow->Run Simulation->Run Behavioral Simulation

![1.Step_Alternate](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Simulation/1_alternate.png)

##### Output showcase

![output](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/03-Vivado/Images/Tutorial/Simulation/2.png)




