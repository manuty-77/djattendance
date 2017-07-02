************************************************************************
file with basedata            : cr448_.bas
initial value random generator: 36966566
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  116
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        0       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           8  12
   3        3          3           5   8  12
   4        3          2          11  12
   5        3          3           6   9  11
   6        3          3           7  10  16
   7        3          2          14  15
   8        3          1           9
   9        3          1          10
  10        3          2          14  15
  11        3          2          13  14
  12        3          2          16  17
  13        3          3          15  16  17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     4      10   10    4    8    8    6
         2     5       9   10    2    7    7    3
         3     7       8    9    2    7    4    3
  3      1     3       7    6    8    8   10    7
         2     4       6    5    6    4    8    7
         3     6       5    1    6    2    6    6
  4      1     1       6    7    8    3    5    3
         2     2       6    6    8    3    3    3
         3     6       6    6    7    3    2    2
  5      1     8       8    7    5    3    4    6
         2     9       5    7    4    3    3    6
         3    10       3    6    3    3    3    3
  6      1     1      10   10    8    3   10    5
         2     3      10    9    7    3    8    4
         3     5       9    9    3    3    7    3
  7      1     4      10    8    6    8    3    3
         2     5       6    5    5    6    2    3
         3     7       4    2    2    3    2    3
  8      1     1       3    8   10    8    4    7
         2     2       2    4   10    7    3    4
         3    10       1    2   10    6    2    1
  9      1     2       6    9    5   10   10    8
         2     2       5    8    6   10   10    6
         3     4       3    7    3   10   10    3
 10      1     1       4    3    3    7   10    7
         2     1       4    3    3    6    7    9
         3     3       4    2    3    4    2    6
 11      1     2       6    6   10    1    9    8
         2     4       5    5    9    1    8    7
         3     5       3    5    8    1    4    7
 12      1     1       3    4    7    9    6    6
         2     5       2    4    5    9    5    6
         3    10       2    4    3    9    5    6
 13      1     3       8    5    5    8    6    8
         2     9       8    1    3    6    5    8
         3     9       8    2    4    4    4    8
 14      1     4       5    9    3    4    9    5
         2     5       4    5    2    2    7    4
         3    10       1    3    2    2    6    2
 15      1     3       9    7    8    6    7    9
         2     3       8    7    9    7    7    6
         3     9       7    7    6    5    2    2
 16      1     3       8    9    6    5    9    9
         2     8       8    8    4    5    6    1
         3     8       8    7    6    4    7    1
 17      1     1       5    3    9    2    9    4
         2     6       5    3    6    2    8    2
         3     7       1    2    3    1    8    1
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   23   25   24   23   96   80
************************************************************************
