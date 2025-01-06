
# Software Development Environments Base Representation and basic binary operations Tutorial

### Resources

[Link](https://www.thoughtco.com/changing-from-base-10-to-base-2-2312136)

## 1) Convert the following base 10 numbers to base 2 using the minimum number of bits
a. 123
b. 257
c. 1035
d. 265
e. 22

__Convert 123 base 10 to base 2__
Step 1: Get bit values by doubling right to left - match the nearest number that can be subtracted from this number
Step 2: Subtract the closest matching bit value from the remainder 
Step 3: All  matched bit values are 1 rest 0

128 64 32 16  8   4  2  1
     1  1  1  1  0  1  1

123 - 64 = 59
59 - 32 = 27
27 - 16 = 11
11 - 8  = 3
3 - 2 = 1
1 - 1 = 0

__Convert 257 base 10 to base 2__
512 256 128 64 32 16 8 4 2 1
     1   0   0  0  0 0 0 0 1

257 - 256 = 1 
1 - 1 =   0

__Convert 1035 base 10 to base 2__
1035 - 1024 = 11
11 - 8 = 3
3 - 2 = 1
1 - 1 = 0

1024 512 128 64 32 16 8 4 2 1
1     0   0   0  0  0 1 0 1 1  

__Convert 265 base 10 to base 2__
512 128 64 32 16 8 4 2 1
  1  1   1  1  1 0 1 1 1     

512 - 265 = 247
247 - 128 = 119
119 - 64 = 55
55 - 32 = 23
23 - 16 = 7
7 - 4 = 3
3 - 2 = 1
1 - 1 = 0

__Convert 22 base 10 to base 2__
32 16 8 4 2 1
1   0 1 0 1 0

32 - 22 = 10
10 - 8 = 2
2 - 2 = 0

## 2) Convert the following base 10 numbers to base 2 using an 8 bit binary representation
a. 123
b. 220
c. 105
d. 99
e. 7
f. 17

__Convert 123 base 10 to base 2 using 8-bit binary representation__
Step 1: Size of the bus is 8 bits so only use 8 bits
Step 2: If the number is greater than the 128 bit then stack overflow - limitation of the bus size
Step 3: If the number smaller pad left with zeros
Step 4: Subtract the closest matching bit value from the remainder 
Step 5: All  matched bit values are 1 rest 0 (as above)

128 64 32 16 8 4 2 1
0    1 0   1 1 1 0 1

123 - 64  = 29
29 - 16 = 13
13 - 8 = 5
5 - 4 = 1
1 - 1 = 0

__Convert 220 base 10 to base 2 using 8-bit binary representation__
128 64 32 16 8 4 2 1 
1   1   1  1 0 0 0 0

220 - 128 = 112
112 - 64 = 48
48-32 = 16
16-16 =0

__Convert 105 base 10 to base 2 using 8-bit binary representation__
128 64 32 16 8 4 2 1
0    1  1  0 1 0 1 0

105 - 64 = 41
41 - 32 = 9
9 - 8 = 1
1 - 1 = 0

## 3) Convert the following base 10 numbers to base 2 using a maximum of 8 bits
a. 0.3125
b. 0.75
c. 0.1875
d. 0.2


## 4) Convert the following binary numbers to decimal
a. 10100010
b. 00000111
c. 10101011
d. 00011001
e. 10101011.11000110
f. 00000000.10001000
g. .10101111


## 5) Convert the following hexadecimal numbers to binary

a. AB1F
b. 1200
c. A1B2
d. 12BE
e. 1CD0

Step 1 - Hex representations 0-9A-F/ 4 bits 8  4  2 1 

Step 2 create a conversion table

                                                                            10      11      12       13      14      15
0      1      2      3      4        5      6       7      8        9       A       B       C        D       E       F

0000  0001    0010   0011    0100    0101   0110    0111    1000    1001    1010    1011    1100    1101    1110    1111    


__Convert AB1F hex numbers to binary__
A        B        1     F
1010     1011    0001   1111

__Convert 1200 hex numbers to binary__
1       2       0         0
0001   0010     0000      0000

__Convert A1B2 hex numbers to binary__
A       1       B       2
1010    0001    1011    0010

__Convert 12BE hex numbers to binary__
1       2       B       E
0001    0010    1011    1111

__Convert 1CD0 hex numbers to binary__
1       C           D        0
0001    1100        1110     0000

## 6) Convert the following binary numbers to hexadecimal

a. 11010101
b. 10111100
c. 101011
d. 110000
e. 10010101



## 7) Add the following binary numbers
a. 10101010 + 11011110
b. 10011011 + 10110111
c. 10101010 + 1010
d. 10101 + 1111



## 8) subtract the following binary numbers
a. 10111011 – 00101111
b. 10110110 – 01011001
c. 10000010 – 00001010
d. 10011100 – 10000001


## 9) If we have an 8-bit representation and we are using 2s complement notation. Convert the
following numbers to decimal
a. 00101010
b. 00011111
c. 10000000
d. 10000001
e. 10111000
f. 10101000


## 10) Convert the following decimal numbers to 2s complement using an 8-bit representation
a. 64
b. 127
c. 21
d. -21
e. -127
f. -64
g. -128


## 11) Carry out the subtraction of the following decimal numbers using two’s complement
notation
a. 66 – 125
b. 120 – 36
c. 155 – 172
d. 99 – 128


## 12) Convert the following decimal numbers to the 32 bit IEEE representation
a. 25.3125
b. 256.65625
c. -0.03125
d. -150.1875


## 13) Covert the following 32 bit IEEE numbers into decimal
a. 11000001010001000000000000000000
b. 10111111000000000000000000000000
c. 01000010000011000110000000000000
d. 01000010100001010000000000000000


## 14) Convert the decimal numbers to an 8 bit binary representation and carry out the following
bitwise operation
a. 23 & 45 where & bitwise AND
b. 23 | 45 where | bitwise OR
c. 23 ^ 45 where ^ bitwise XOR
d. ~67 where ~ bitwise NOT
e. 115 >> 2 where >> right bit shift
f. 16 << 3 where << left bit shift