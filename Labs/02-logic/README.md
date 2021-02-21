# Lab 2: Combinational logic



*Digital* or *Binary comparator* compares the digital signals A, B presented at input terminal and produce outputs depending upon the condition of those inputs. Complete the truth table for 2-bit *Identity comparator* (B equals A), and two *Magnitude comparators* (B is greater than A, B is less than A).

| **Dec. equivalent** |**B1**|**B0**|**A1**|**A0**|**B > A**|**B = A**|**B < A**|
|        :-:          | :-:  | :-:  |  :-: |  :-: |   :-:   |   :-:   |   :-:   |
|         0           | 0    |  0   |   0  |   0  |    0    |    1    |    0    |
|         1           | 0    |  0   |   0  |   1  |    0    |    0    |    1    |
|         2           | 0    |  0   |   1  |   0  |    0    |    0    |    1    |
|         3           | 0    |  0   |   1  |   1  |    0    |    0    |    1    |
|         4           | 0    |  1   |   0  |   0  |    1    |    0    |    0    |
|         5           | 0    |  1   |   0  |   1  |    0    |    1    |    0    |
|         6           | 0    |  1   |   1  |   0  |    0    |    0    |    1    |
|         7           | 0    |  1   |   1  |   1  |    0    |    0    |    1    |
|         8           | 1    |  0   |   0  |   0  |    1    |    0    |    0    |
|         9           | 1    |  0   |   0  |   1  |    1    |    0    |    0    |
|         10          | 1    |  0   |   1  |   0  |    0    |    1    |    0    |
|         11          | 1    |  0   |   1  |   1  |    0    |    0    |    1    |
|         12          | 1    |  1   |   0  |   0  |    1    |    0    |    0    |
|         13          | 1    |  1   |   0  |   1  |    1    |    0    |    0    |
|         14          | 1    |  1   |   1  |   0  |    1    |    0    |    0    |
|         15          | 1    |  1   |   1  |   1  |    0    |    1    |    0    |

According to the truth table, write canonical SoP (Sum of Products) and PoS (Product of Sums) forms for "equals" and "less than" functions:

![SOP](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/SOP.png)

![POS](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/POS.png)


## Logic function minimization
| **SoP form of the "greater than" function** |**PoS form of the "less than" function**|
|        :-:          | :-:  |
|![SOP](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Greater_SOP.png)           | ![POS](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Less_POS.png)    |

simplified SoP form of the "greater than" function and a simplified PoS form of the "less than" function.
![Min_SoP](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Greater_Min_SOP.png)

![Less_PoS](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Less_Min_PoS.png)
