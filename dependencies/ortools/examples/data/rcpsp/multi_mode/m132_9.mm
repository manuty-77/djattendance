************************************************************************
file with basedata            : cm132_.bas
initial value random generator: 1296807488
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  82
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       33       12       33
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           7  11  12
   3        1          3           5   6  17
   4        1          3           5   9  10
   5        1          3          11  13  16
   6        1          2           7  11
   7        1          2           8  10
   8        1          2           9  13
   9        1          2          15  16
  10        1          1          14
  11        1          1          14
  12        1          3          13  16  17
  13        1          1          14
  14        1          1          15
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       2    6    9    0
  3      1     5       9    9    4    0
  4      1     7       4    9    0    4
  5      1     9       2    7    7    0
  6      1     2      10    3    0    6
  7      1     6       6    4    0    4
  8      1     2       7    9    2    0
  9      1    10      10    7    0    3
 10      1     5       7    4    0    3
 11      1     5       8    4    0    5
 12      1     9       6    5    0    8
 13      1     4       6    3    7    0
 14      1     3       4    6    0    6
 15      1     8       6    4    0    6
 16      1     3       2    5   10    0
 17      1     2       2    5    8    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   31   24   47   45
************************************************************************
