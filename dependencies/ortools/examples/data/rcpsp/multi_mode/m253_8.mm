************************************************************************
file with basedata            : cm253_.bas
initial value random generator: 773425025
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  128
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       30        3       30
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          1           5
   3        2          3          10  13  15
   4        2          1           9
   5        2          3           6   7   8
   6        2          3           9  10  12
   7        2          3           9  10  12
   8        2          2          15  16
   9        2          2          11  13
  10        2          1          11
  11        2          2          14  17
  12        2          3          14  15  17
  13        2          2          14  17
  14        2          1          16
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     7       2    6    3    8
         2     7       1    7    5    3
  3      1     6       7    9    7    8
         2     9       5    7    7    7
  4      1     5       8    6    7    8
         2     5       3    9    7    9
  5      1     2       6   10    4    2
         2     9       2   10    3    1
  6      1     3       6    8    2    1
         2     3       7    4    1    2
  7      1     2       6   10    7    4
         2     8       5   10    7    4
  8      1    10       4    3    8    9
         2    10       9    2    2    6
  9      1     1       6    8   10    6
         2    10       4    6    4    1
 10      1     2       9    4    6    6
         2     9       9    2    3    5
 11      1     6       9   10    7    8
         2    10       9   10    2    3
 12      1     1       7    7    9    5
         2     7       6    5    9    4
 13      1     3       5    8    8    7
         2     7       4    6    4    6
 14      1     6       5    5    4    7
         2    10       4    4    4    6
 15      1     1       8    8    7    7
         2     7       8    7    5    4
 16      1     4      10    6    9    5
         2     8       8    6    9    3
 17      1     4       4    8    8    6
         2     9       2    6    7    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   15   14  100   91
************************************************************************
