************************************************************************
file with basedata            : c2157_.bas
initial value random generator: 989013615
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  132
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       25        3       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           5  10
   3        3          3           5   7   8
   4        3          3           5   6   9
   5        3          2          12  14
   6        3          3           8  10  11
   7        3          3          10  11  13
   8        3          3          13  15  17
   9        3          3          11  13  14
  10        3          2          12  14
  11        3          3          12  16  17
  12        3          1          15
  13        3          1          16
  14        3          3          15  16  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     8       6    0    9    4
         2    10       6    0    9    3
         3    10       0    6    8    3
  3      1     1       6    0   10    5
         2     9       0    7    9    5
         3     9       1    0    9    5
  4      1     1       0    4    4    7
         2     6       0    4    4    5
         3    10       0    2    3    4
  5      1     9      10    0    1    8
         2    10       3    0    1    6
         3    10       0    4    1    4
  6      1     2       6    0    9    5
         2     2       0    4   10    4
         3     3       5    0    9    3
  7      1     7       4    0    5    9
         2     8       3    0    5    7
         3     9       1    0    4    6
  8      1     1       0    4    7    8
         2     3       0    3    7    7
         3     6       6    0    5    4
  9      1     1       0    8    7    8
         2     2       1    0    7    6
         3     6       0    7    7    2
 10      1     3       7    0    1    8
         2     5       0    7    1    7
         3     5       7    0    1    7
 11      1     8       7    0    7    8
         2     9       0   10    5    4
         3     9       6    0    6    7
 12      1     1       2    0    6    8
         2     5       0    6    6    7
         3    10       1    0    6    6
 13      1     3       0    8    3    8
         2    10       6    0    2    8
         3    10       0    3    2    6
 14      1     3       6    0    5    5
         2     8       0    8    3    4
         3    10       2    0    1    2
 15      1     2       8    0    9    9
         2     6       0    3    8    8
         3    10       6    0    8    6
 16      1     5       0    9    5    6
         2    10       2    0    5    4
         3    10       0    8    4    5
 17      1     1       0    3    6    7
         2     4       8    0    5    4
         3     5       6    0    4    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    8    9   95  113
************************************************************************
