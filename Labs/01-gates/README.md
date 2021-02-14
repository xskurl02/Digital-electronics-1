## My assigment  

### verification of De Morgan's laws

#### Table 

| **c** | **b** |**a** | **f(c,b,a)** | **f(c,b,a)nand** | **f(c,b,a)nor** |
| - | - | - | - | - | - |
| 0 | 0 | 0 |  |  |  |
| 0 | 0 | 1 |  |  |  |
| 0 | 1 | 0 |  |  |  |
| 0 | 1 | 1 |  |  |  |
| 1 | 0 | 0 |  |  |  |
| 1 | 0 | 1 |  |  |  |
| 1 | 1 | 0 |  |  |  |
| 1 | 1 | 1 |  |  |  |

#### Code snippet 
```vhdl
architecture dataflow of gates is
begin
    f_o  <=   ((not b_i) and a_i) or ((not c_i) and (not b_i));
    fnand_o <= a_i;
    fnor_o <= a_i and b_i;

end architecture dataflow;

```
#### Screenshot



#### EDA playground link
