************************************************************************
file with basedata            : cn132_.bas
initial value random generator: 1315380764
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  135
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       15       15       15
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   8  15
   3        3          3          10  12  16
   4        3          3           6   7  12
   5        3          2           6  11
   6        3          3           9  13  14
   7        3          3          14  15  17
   8        3          2          10  14
   9        3          2          16  17
  10        3          1          11
  11        3          1          13
  12        3          2          13  15
  13        3          1          17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     3       3    7    4
         2     6       3    5    0
         3    10       3    4    1
  3      1     2       6    7    0
         2     4       4    4    0
         3     9       1    3    0
  4      1     1       7    8    0
         2     1       9    6    0
         3     6       6    4    6
  5      1     1       6    8    7
         2     1       7    8    0
         3     5       6    3    0
  6      1     1       4    8    0
         2     3       3    7    4
         3    10       3    5    0
  7      1     3       7    4   10
         2     9       6    3    7
         3     9       5    4    6
  8      1     4      10    4    0
         2     4       9    5    0
         3     8       5    2    0
  9      1     2       4    6    3
         2     8       4    5    2
         3    10       2    3    2
 10      1     1       9    7    6
         2     2       9    5    0
         3     9       9    3    0
 11      1     3       3    3    7
         2     7       2    3    7
         3     8       2    2    0
 12      1     2       7    4    0
         2     5       5    3    7
         3     8       4    2    6
 13      1     1      10    8    0
         2     3      10    7    8
         3     7       9    5    4
 14      1     1      10    8    0
         2     5       4    5    0
         3    10       3    4    0
 15      1     5       8    6    0
         2     8       4    2    5
         3     8       4    4    0
 16      1     2       6    8    9
         2     3       5    8    9
         3     9       3    7    8
 17      1     3       5    5    4
         2     6       3    5    3
         3     9       1    5    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   31   22   80
************************************************************************
