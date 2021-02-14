## My assigment  

### verification of De Morgan's laws

#### Table 

| **c** | **b** |**a** | **f(c,b,a)** |
| - | - | - | - | 
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
![Screenshot of analysis](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/01-gates/Images/De-morgan%20laws.png)


#### EDA playground link
https://www.edaplayground.com/x/8NeY



### verification of boolean postulates
#### formula
#### Table 
#### Code snippet 
#### Screenshot
#### EDA playground link


### verification of distributive laws
#### formula
#### Table 
#### Code snippet 
#### Screenshot
#### EDA playground link
