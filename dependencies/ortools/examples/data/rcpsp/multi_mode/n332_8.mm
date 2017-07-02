************************************************************************
file with basedata            : cn332_.bas
initial value random generator: 379711991
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  123
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  3   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23        4       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  16
   3        3          3           5  10  12
   4        3          3           5  11  12
   5        3          2           9  14
   6        3          1           7
   7        3          3           8  10  12
   8        3          2           9  13
   9        3          1          15
  10        3          2          14  17
  11        3          3          15  16  17
  12        3          2          13  17
  13        3          1          14
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2  N 3
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     3       7    6    0    0   10
         2     5       4    5    9   10    5
         3     8       3    4    7    6    0
  3      1     1       3    6    0    0    8
         2     8       2    6    6    0    6
         3    10       2    4    3    0    0
  4      1     1       4    3    7   10    0
         2     7       4    3    6    0   10
         3     9       4    3    2   10    0
  5      1     1       2    7    9    2    0
         2     6       1    6    9    0    4
         3    10       1    5    0    2    0
  6      1     3       5    8    6    0    8
         2     8       4    5    3    0    7
         3    10       2    3    0    7    5
  7      1     1       4    7    9    0    0
         2     2       3    5    0    5    4
         3     7       3    4    0    3    3
  8      1     1       6   10    5    0    8
         2     2       6    7    5    3    6
         3     8       6    6    0    0    3
  9      1     2       6    9    0    0    9
         2     6       6    5    0    9    7
         3     7       3    3    9    0    0
 10      1     1       4    8    0    8    0
         2     2       4    5    0    0   10
         3     5       1    5    0    0    9
 11      1     1       9    6    0    9    0
         2     2       8    4    0    0    5
         3     4       4    3    6    0    0
 12      1     3       5    6    0    6    0
         2     5       4    6    6    0    0
         3     8       2    6    0    1    0
 13      1     7       2    8    0    2    0
         2     7       1    5    2    3    0
         3     7       2    7    1    1    7
 14      1     2       7    4    9    8    0
         2     6       6    4    0    3    0
         3     9       5    3    8    0    0
 15      1     4       9    8    8    0    0
         2     9       9    5    0    8    0
         3     9       9    1    0    0    4
 16      1     3       7    6    4    8    0
         2     6       5    5    0    5    0
         3     8       3    4    0    5    0
 17      1     2       5    6    0    4    3
         2     2       5    6    8    0    0
         3     4       1    2    8    0    3
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2  N 3
   16   24  103  100   90
************************************************************************
