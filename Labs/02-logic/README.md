# Lab 2: Combinational logic

## 1.Preparation tasks

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

![SOP](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/SOP.png)

![POS](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/POS.png)


## 2. 2-bit comparator
|**PoS form of the "less than" function**  |   **SoP form of the "equal" function**       | **SoP form of the "greater than" function** |
|:-:|:-:|:-:|
|![POS](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Less_POS.png) | ![SOP](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Equal_SOP.png)|![SOP](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Greater_SOP.png)|

simplified SoP form of the "greater than" function and a simplified PoS form of the "less than" function.
![Min_SoP](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Greater_Min_SOP.png)

![Less_PoS](https://github.com/xskurl02/Digital-electronics-1/blob/main/Labs/02-logic/Images/Less_Min_PoS.png)

### EDA playground link
https://www.edaplayground.com/x/Lhff

## 3. 4-bit comparator
