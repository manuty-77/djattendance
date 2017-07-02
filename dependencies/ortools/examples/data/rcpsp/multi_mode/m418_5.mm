************************************************************************
file with basedata            : cm418_.bas
initial value random generator: 1574354584
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  143
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       25       11       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          3           7  11  12
   3        4          2           9  14
   4        4          2           5   6
   5        4          3           8  10  13
   6        4          2          10  15
   7        4          2           9  14
   8        4          3           9  11  12
   9        4          2          16  17
  10        4          2          12  17
  11        4          1          15
  12        4          1          16
  13        4          3          14  16  17
  14        4          1          15
  15        4          1          18
  16        4          1          18
  17        4          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       9    0    0    5
         2     5       0    8    9    0
         3     7       7    0    8    0
         4    10       0    5    0    3
  3      1     3       5    0    0    7
         2     6       4    0    0    5
         3     7       0    4    1    0
         4     8       0    4    0    5
  4      1     1       7    0    9    0
         2     4       0    7    0   10
         3     7       0    6    8    0
         4     8       0    6    0    5
  5      1     5       0    7    5    0
         2     6       0    3    0    3
         3     6       7    0    4    0
         4    10       6    0    0    3
  6      1     4       2    0    0   10
         2     4      10    0    7    0
         3     7       0    8    7    0
         4     9       0    4    0   10
  7      1     2       7    0   10    0
         2     6       7    0    0    3
         3     7       0    8    0    2
         4     8       0    5    9    0
  8      1     9       0    5    0    2
         2    10       8    0    0    2
         3    10       0    5    6    0
         4    10       0    5    0    1
  9      1     1       7    0    0    8
         2     2       5    0    0    7
         3     7       2    0    0    4
         4     8       0    7    0    3
 10      1     2       6    0    4    0
         2     3       0    8    0    6
         3     4       0    8    3    0
         4    10       0    4    3    0
 11      1     1       5    0    8    0
         2     3       2    0    0    6
         3     3       0    6    6    0
         4     7       0    5    6    0
 12      1     6       0    6    0   10
         2     7       0    6    8    0
         3     8       5    0    5    0
         4     9       5    0    0    7
 13      1     4       3    0    0    7
         2     4       3    0    2    0
         3     7       0    2    0    9
         4     9       3    0    0    6
 14      1     5      10    0    9    0
         2     7       0   10    0    7
         3    10       0    8    0    6
         4    10       9    0    0    6
 15      1     5       0    5    0    6
         2     6       0    4    0    6
         3     7       6    0    2    0
         4     8       4    0    0    6
 16      1     4       0    6    0    9
         2     4       1    0    0    8
         3     5       0    5    0    6
         4     9       0    4    0    2
 17      1     3       2    0    5    0
         2     4       2    0    0   10
         3     8       1    0    4    0
         4    10       1    0    0    9
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   16   15   64   85
************************************************************************
