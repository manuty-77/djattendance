************************************************************************
file with basedata            : cm413_.bas
initial value random generator: 1437647406
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  140
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23        6       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        4          3           5   6   7
   3        4          3           5   9  11
   4        4          1          16
   5        4          3          14  15  17
   6        4          3          10  11  12
   7        4          3           8   9  10
   8        4          2          11  12
   9        4          1          13
  10        4          1          16
  11        4          2          13  17
  12        4          2          15  17
  13        4          2          14  15
  14        4          1          16
  15        4          1          18
  16        4          1          18
  17        4          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       7    8    0    6
         2     3       7    9    0    5
         3     8       7    6    5    0
         4     9       7    5    0    4
  3      1     1       6    8    9    0
         2     4       6    4    0    7
         3    10       5    2    0    6
         4    10       5    4    7    0
  4      1     3       7    6    6    0
         2     4       6    5    5    0
         3     5       4    3    0    1
         4     8       4    2    2    0
  5      1     1       4    6    9    0
         2     2       4    5    5    0
         3     3       3    4    4    0
         4     8       2    2    0    9
  6      1     3       3    4    0    5
         2     3       3    4    8    0
         3     6       3    3    7    0
         4     9       2    3    3    0
  7      1     1       5   10    0    6
         2     6       5    8   10    0
         3     8       4    5    5    0
         4    10       3    4    0    5
  8      1     1       2    5    0    9
         2     3       2    4    4    0
         3     6       1    3    3    0
         4    10       1    2    0    9
  9      1     1       6    6    4    0
         2     6       6    6    0    4
         3    10       5    5    4    0
         4    10       5    5    0    3
 10      1     2       8    5    9    0
         2     3       7    3    0    6
         3     4       7    2    0    5
         4     5       3    1    6    0
 11      1     6       5    9    5    0
         2     8       4    8    5    0
         3     8       5    8    4    0
         4     9       4    8    4    0
 12      1     4       8    8    8    0
         2     6       7    8    0    6
         3     9       6    6    0    2
         4     9       5    5    6    0
 13      1     3       9    8    0   10
         2     3       9    8    4    0
         3     8       9    7    3    0
         4    10       6    5    2    0
 14      1     5       6    5    0    7
         2     7       5    5    5    0
         3    10       2    5    2    0
         4    10       1    4    0    3
 15      1     1       9    6    0    7
         2     4       8    4    8    0
         3     5       8    2    7    0
         4     5       8    1    0    6
 16      1     3       6    8    9    0
         2     4       6    7    0    3
         3     7       5    6    0    1
         4     8       5    4    9    0
 17      1     6      10    7    8    0
         2     7       9    7    7    0
         3     8       8    6    6    0
         4    10       5    6    6    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   12   12   61   43
************************************************************************