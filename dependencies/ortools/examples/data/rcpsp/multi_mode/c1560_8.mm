************************************************************************
file with basedata            : c1560_.bas
initial value random generator: 473482157
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  117
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       24       12       24
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  12  16
   3        3          3           5   9  12
   4        3          1           6
   5        3          1           7
   6        3          1          11
   7        3          2          10  14
   8        3          1          15
   9        3          1          14
  10        3          2          11  13
  11        3          2          16  17
  12        3          2          13  17
  13        3          1          15
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       8    0    6    3
         2     5       0    6    7    3
         3     6       0    3    5    3
  3      1     3       3    0    4    7
         2     5       0    8    1    5
         3     5       3    0    3    4
  4      1     1       0    3    3    9
         2     2       0    2    2    7
         3     9       0    1    1    6
  5      1     3       6    0    9    8
         2     8       3    0    9    3
         3     8       0    2    9    1
  6      1     2       7    0    8    8
         2     5       3    0    3    4
         3     5       3    0    6    3
  7      1     2       7    0    9    7
         2     8       0    7    6    2
         3     8       1    0    7    1
  8      1     4       3    0    6    8
         2     6       0    7    5    4
         3     9       3    0    4    2
  9      1     4       0    8    8    8
         2     5       0    7    7    7
         3     8       9    0    5    5
 10      1     5       4    0    9    7
         2     9       0   10    8    5
         3     9       0    9    9    2
 11      1     1       7    0    6    9
         2     7       0    5    6    7
         3     8       0    4    5    5
 12      1     3       6    0    9   10
         2     6       6    0    6    8
         3     7       0    5    5    6
 13      1     6       7    0    6    4
         2     8       0    7    3    4
         3     8       4    0    3    4
 14      1     5       0    8    6   10
         2     9       0    2    5   10
         3    10       5    0    3    9
 15      1     5       8    0    9    3
         2     5       9    0    6    8
         3     5       0    9    3    9
 16      1     2       9    0    6   10
         2     4       7    0    6   10
         3     4       0    8    6    9
 17      1     3       3    0    6    8
         2     4       0    8    3    4
         3     8       0    1    3    1
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   25   25  111  125
************************************************************************
