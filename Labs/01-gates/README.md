## My assigment  

### Verification of De Morgan's laws

#### Table 

|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/De_Morgan/De_Morgan_C.gif)|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/De_Morgan/De_Morgan_B.gif)|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/De_Morgan/De_Morgan_A.gif)|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/De_Morgan/De_Morgan_F.gif)|
| :-: | :-: | :-: | :-: | 
| 0 | 0 | 0 | 1 | 
| 0 | 0 | 1 | 1 | 
| 0 | 1 | 0 | 0 |  
| 0 | 1 | 1 | 0 |  
| 1 | 0 | 0 | 0 |  
| 1 | 0 | 1 | 1 |  
| 1 | 1 | 0 | 0 | 
| 1 | 1 | 1 | 0 |  

#### Code snippet 
```vhdl
architecture dataflow of gates is
begin
    f_o     <= ((not b_i) and a_i) or ((not c_i) and (not b_i));
    fnand_o <= not (not (not b_i and a_i) and not(not b_i and not c_i));
    fnor_o  <= not (b_i or (not a_i)) or (not (c_i or b_i));

end architecture dataflow;

```

#### Screenshot
![Screenshot of analysis](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Analysis_Screenshots/De_morgan%20laws.png)


#### EDA playground link
https://www.edaplayground.com/x/8NeY



### Verification of boolean postulates

#### Formula
![formula of Boolean postulates](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Postulates_Formula.gif)

#### Table 
|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Postulate/Postulate_1.gif)|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Postulate/Postulate_2.gif)|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Postulate/Postulate_3.gif)|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Postulate/Postulate_4.gif)|![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Postulate/Postulate_5.gif)|
| :-: |  :-: |  :-:  | :-:  |  :-: | 
| 0 |   1  |  1  |    |    |
| 1 |   1  |  1  |    |    |

#### Code snippet 

```vhdl
architecture dataflow of gates is
begin
    f1_o  <= (x_i and (not x_i));
    f2_o  <= (x_i or (not x_i));
    f3_o  <= (x_i or x_i or x_i);
    f4_o  <= (x_i and x_i and x_i);

end architecture dataflow;
```
#### Screenshot
![Screenshot of analysis](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Analysis_Screenshots/Postulates.png)

#### EDA playground link
https://www.edaplayground.com/x/EsHA

### Verification of distributive laws

#### Formula
![formula of Distributive laws](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Distributive_Laws.gif)

#### Table 
| ![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Distributive/Distributive_x.gif) | ![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Distributive/Distributive_y.gif) |![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Distributive/Distributive_z.gif) | ![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Distributive/Distributive_1.gif) | ![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Distributive/Distributive_2.gif) | ![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Distributive/Distributive_3.gif) | ![](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Table_Contents/Distributive/Distributive_4.gif)
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | 
| 0 | 0 | 0 |     | 0   | 0   |     | 
| 0 | 0 | 0 |     | 0   | 0   |     | 
| 0 | 0 | 0 |     | 0   | 0   |     |  
| 0 | 0 | 0 |     | 0   | 0   |     | 
| 0 | 0 | 0 |     | 0   | 0   |     |  
| 0 | 0 | 0 |     | 0   | 0   |     |  
| 0 | 0 | 0 |     | 0   | 0   |     | 
| 0 | 0 | 0 |     | 0   | 0   |     |  

#### Code snippet
```vhdl
architecture dataflow of gates is
begin
    f1_o  <= ((x_i and y_i) or (x_i and z_i));
    f2_o  <= (x_i and (y_i or z_i));
    f3_o  <= ((x_i or y_i) and (x_i or z_i));
    f4_o  <= (x_i or (y_i and z_i));

end architecture dataflow;
```
#### Screenshot
![Screenshot of analysis](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/Analysis_Screenshots/Distributive_laws.png)

#### EDA playground link
https://www.edaplayground.com/x/HcFX
