# Lab 4: Seven-segment display decoder

## 1. Preparation tasks

### Figure or table with connection of 7-segment displays on Nexys A7 board,

| **Segment** | **Connection** | **Anode** | **Connection** | 
| :-: 	      |    :-:         |  :-:      |       :-:      |
| CA   	      |      T10       |  AN0      |      J17       | 
| CB  	      |      R10       |  AN1      |      J18       |
| CC   	      |      K16       |  AN2      |      T9        |
| CD  	      |      K13       |  AN3      |      J14       |
| CE          |      P15       |  AN4      |      P14       |
| CF          |      T11       |  AN5      |      T14       |
| CG          |      L18       |  AN6      |      K2        |
| DP          |      H15       |  AN7      |      U13       |


### Decoder truth table for common anode 7-segment display.

| **Hex** | **Inputs** | **A** | **B** | **C** | **D** | **E** | **F** | **G** | **Outputs** |
| :-: 	  |    :-:     |  :-:  |  :-:  |  :-:  |  :-:  |  :-:  |  :-:  |  :-:  |     :-:     |
| 0   	  |    0000    |   0   |   0   |   0   |   0   |   0   |   0   |   1   |   0000001   | 
| 1  	  |    0001    |   1   |   0   |   0   |   1   |   1   |   1   |   1   |   1001111   |
| 2   	  |    0010    |   0   |   0   |   1   |   0   |   0   |   1   |   0   |   0010010   |
| 3  	  |    0011    |   0   |   0   |   0   |   0   |   1   |   1   |   0   |   0000110   |
| 4       |    0100    |   1   |   0   |   0   |   1   |   1   |   0   |   0   |   1001100   |
| 5       |    0101    |   0   |   1   |   0   |   0   |   1   |   0   |   0   |   0100100   |
| 6       |    0110    |   0   |   1   |   0   |   0   |   0   |   0   |   0   |   0100000   |
| 7       |    0111    |   0   |   0   |   0   |   1   |   1   |   1   |   1   |   0001111   |
| 8       |    1000    |   0   |   0   |   0   |   0   |   0   |   0   |   0   |   0000000   |
| 9       |    1001    |   0   |   0   |   0   |   0   |   1   |   0   |   0   |   0000100   |
| A       |    1010    |   0   |   0   |   0   |   1   |   0   |   0   |   0   |   0001000   |
| b       |    1011    |   1   |   1   |   0   |   0   |   0   |   0   |   0   |   1100000   |
| C       |    1100    |   0   |   1   |   1   |   0   |   0   |   0   |   1   |   0110001   |
| d       |    1101    |   1   |   0   |   0   |   0   |   0   |   1   |   0   |   1000010   |
| E       |    1110    |   0   |   1   |   1   |   0   |   0   |   0   |   0   |   0110000   |
| F       |    1111    |   0   |   1   |   1   |   1   |   0   |   0   |   0   |   0111000   |





## 2. Seven-segment display decoder

### VHDL architecture from source file `hex_7seg.vhd`

```vhdl
architecture Behavioral of hex_7seg is

begin
    --------------------------------------------------------------------
    -- p_7seg_decoder:
    -- A combinational process for 7-segment display (Common Anode)
    -- decoder. Any time "hex_i" is changed, the process is "executed".
    -- Output pin seg_o(6) controls segment A, seg_o(5) segment B, etc.
    --       segment A
    --        | segment B
    --        |  | segment C
    --        |  |  |   ...   segment G
    --        +-+|+-+          |
    --          |||            |
    -- seg_o = "0000001"-------+
    --------------------------------------------------------------------
  p_7seg_decoder : process(hex_i) --proces sa vykonava sekvencne, vsetky pripadenia sa vykonaju po ukonceni procesu 
    begin                         --Combinacny process, v sensivity listu nema clock
        case hex_i is
            when "0000" =>
                seg_o <= "0000001";     -- 0
            when "0001" =>
                seg_o <= "1001111";     -- 1
            when "0010" =>
                seg_o <= "0010010";     -- 2
            when "0011" =>
                seg_o <= "0000110";     -- 3
            when "0100" =>
                seg_o <= "1001100";     -- 4
            when "0101" =>
                seg_o <= "0100100";     -- 5    
            when "0110" =>
                seg_o <= "0100000";     -- 6    
            when "0111" =>
                seg_o <= "0001111";     -- 7 
            when "1000" =>
                seg_o <= "0000000";     -- 8
            when "1001" =>
                seg_o <= "0000100";     -- 9
            when "1010" =>
                seg_o <= "0001000";     -- A
            when "1011" =>
                seg_o <= "1100000";     -- b
            when "1100" =>
                seg_o <= "0110001";     -- C
            when "1101" =>
                seg_o <= "1000010";     -- d
            when "1110" =>
                seg_o <= "0110000";     -- E
            when others =>
                seg_o <= "0111000";     -- F
        end case;
    end process p_7seg_decoder; --vystup je posledny vysledok

end Behavioral;
```

### VHDL stimulus process from testbench file `tb_hex_7seg.vhd`

```vhdl
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
```

### Screenshot with simulated time waveforms

**TBA**

### Listing of VHDL code from source file `top.vhd` with 7-segment module instantiation.
```vhdl
    hex2seg : entity work.hex_7seg
        port map(
            hex_i    => SW,
            
            seg_o(6) => CA,
            seg_o(5) => CB,
            seg_o(4) => CC,
            seg_o(3) => CD,
            seg_o(2) => CE,
            seg_o(1) => CF,
            seg_o(0) => CG
        );
```

## 2. LED(7:4) indicators

### Truth table and listing of VHDL code for LEDs(7:4) 

| **Hex** | **Inputs** | **LED4** | **LED5** | **LED6** | **LED7** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0000 |  |  |  |  |
| 1 | 0001 |  |  |  |  |
| 2 |      |  |  |  |  |
| 3 |      |  |  |  |  |
| 4 |      |  |  |  |  |
| 5 |      |  |  |  |  |
| 6 |      |  |  |  |  |
| 7 |      |  |  |  |  |
| 8 | 1000 |  |  |  |  |
| 9 |      |  |  |  |  |
| A |      |  |  |  |  |
| b |      |  |  |  |  |
| C |      |  |  |  |  |
| d |      |  |  |  |  |
| E | 1110 |  |  |  |  |
| F | 1111 |  |  |  |  |


###  Screenshot with simulated time waveforms.
13:55 -TBA



## Lab assignment

1. Preparation tasks (done before the lab at home). Submit:
    * Figure or table with connection of 7-segment displays on Nexys A7 board,
    * Decoder truth table for common anode 7-segment display.

2. Seven-segment display decoder. Submit:
    * Listing of VHDL architecture from source file `hex_7seg.vhd` with syntax highlighting,
    * Listing of VHDL stimulus process from testbench file `tb_hex_7seg.vhd` with syntax highlighting and asserts,
    * Screenshot with simulated time waveforms; always display all inputs and outputs,
    * Listing of VHDL code from source file `top.vhd` with 7-segment module instantiation.

3. LED(7:4) indicators. Submit:
    * Truth table and listing of VHDL code for LEDs(7:4) with syntax highlighting,
    * Screenshot with simulated time waveforms; always display all inputs and outputs.


