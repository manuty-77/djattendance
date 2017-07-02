************************************************************************
file with basedata            : cr515_.bas
initial value random generator: 23855
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  140
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21       15       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7   8  14
   3        3          3           5   6  11
   4        3          2           8   9
   5        3          2           9  10
   6        3          2           8  13
   7        3          2          13  15
   8        3          2          15  17
   9        3          2          14  16
  10        3          2          12  13
  11        3          2          12  16
  12        3          1          14
  13        3          2          16  17
  14        3          2          15  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     1       3    9    7    7    1    0    4
         2     4       3    7    6    7    1    0    3
         3     7       2    4    6    5    1    0    2
  3      1     7       7    8    6   10    4    9    0
         2     7       7    8    6   10    4    0    5
         3     8       4    6    6   10    4    8    0
  4      1     3       9    5    8    7    7    5    0
         2     7       7    5    7    7    7    0    9
         3    10       6    4    5    5    7    3    0
  5      1     2       9   10    3    6    4    0    8
         2     6       9   10    3    5    3    8    0
         3    10       8    9    1    3    2    0    8
  6      1     4       4    8   10    9    8    0    3
         2     6       4    5   10    8    6    0    3
         3     9       3    3    9    8    4    0    2
  7      1     3       9    5    6    9    6    0    4
         2     7       9    4    4    8    4    2    0
         3    10       8    3    2    7    3    2    0
  8      1     3       8    6    2    3    4    0    8
         2     3       8    8    2    3    5    5    0
         3     9       6    4    2    2    3    0    8
  9      1     1       7    9    8   10    5    9    0
         2     2       5    9    8    8    4    8    0
         3     6       4    8    8    8    4    0    5
 10      1     2       9    5    2    9    8    0    9
         2     2       9    5    2    8    9    9    0
         3     8       7    3    2    6    8    0    9
 11      1     4       7    7    9    3    8    0    6
         2    10       6    3    9    1    6    0    3
         3    10       5    2    9    3    7    0    3
 12      1     5       5    9    9    4    8    0    9
         2     6       4    8    7    2    6    8    0
         3     7       2    8    5    2    4    0    2
 13      1     2       5    2    4    6    7    8    0
         2     3       4    2    4    6    5    5    0
         3    10       3    1    4    2    3    4    0
 14      1     1       9    8    6    8    9    0    1
         2     6       7    6    5    8    9    7    0
         3     9       7    2    5    8    8    7    0
 15      1     4       8    5    8    3    7    5    0
         2     5       6    5    7    2    7    4    0
         3     8       1    3    5    2    5    3    0
 16      1     4       9    9    9    4    9    8    0
         2     6       5    9    9    3    8    0    9
         3     9       3    9    9    3    8    0    9
 17      1     3       7    4    7    6    9    1    0
         2     5       6    4    7    5    7    0    8
         3    10       6    4    5    3    7    0    6
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
   22   24   24   26   25   46   48
************************************************************************
