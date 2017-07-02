************************************************************************
file with basedata            : cm546_.bas
initial value random generator: 1344180519
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  144
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       11        2       11
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          2           8  13
   3        5          3           5   6  10
   4        5          3           7  11  13
   5        5          3           9  11  14
   6        5          1           8
   7        5          3           9  16  17
   8        5          2          14  15
   9        5          1          15
  10        5          2          11  12
  11        5          3          15  16  17
  12        5          1          13
  13        5          2          14  16
  14        5          1          17
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     4       6    7    9   10
         2     5       6    7    8    9
         3     6       6    5    6    9
         4     6       5    6    6    9
         5    10       5    4    5    8
  3      1     4       8    4    7    6
         2     5       8    3    5    6
         3     5       8    4    6    5
         4     8       7    3    4    5
         5    10       5    2    3    5
  4      1     4      10    6   10    6
         2     5       9    5    8    6
         3     6       9    5    6    6
         4     9       8    5    5    6
         5    10       8    4    5    6
  5      1     2      10    8    7    7
         2     2      10    7    9    7
         3     4      10    7    6    7
         4     6       9    6    3    5
         5     8       8    5    1    4
  6      1     3       4    3    5   10
         2     5       4    3    5    8
         3     6       3    2    4    4
         4     7       3    1    4    3
         5     7       3    2    4    2
  7      1     1       9    1    9    9
         2     3       8    1    9    9
         3     5       6    1    8    8
         4     6       5    1    6    8
         5     7       1    1    4    8
  8      1     2       5    9    6    5
         2     3       5    9    6    4
         3     3       5    8    6    5
         4     9       4    7    5    3
         5    10       3    6    4    3
  9      1     3       5   10   10    3
         2     4       4    8    9    3
         3     7       3    7    9    3
         4     8       3    6    8    3
         5     9       2    6    7    3
 10      1     1       7    9    8   10
         2     2       5    8    7    7
         3     3       5    7    6    7
         4     4       4    7    5    4
         5    10       4    5    3    4
 11      1     2       7    8    9    9
         2     5       6    8    8    8
         3     6       6    7    5    7
         4     7       5    7    5    6
         5     8       5    7    3    4
 12      1     2       8    7    9    2
         2     5       7    7    7    2
         3     6       7    5    7    1
         4     8       6    5    4    1
         5     9       6    4    4    1
 13      1     1       8    3    9    4
         2     3       8    3    7    3
         3     5       7    3    6    3
         4     6       7    2    5    3
         5     8       6    2    4    1
 14      1     1       4    6    2   10
         2     3       3    5    2   10
         3     4       3    4    2   10
         4     7       2    4    1    9
         5    10       1    2    1    9
 15      1     2      10    8    3    7
         2     4       7    7    3    6
         3     6       6    5    3    5
         4     6       4    6    3    4
         5     8       1    4    3    4
 16      1     2      10    4    4    6
         2     3       9    4    4    6
         3     5       9    4    3    5
         4     6       9    4    2    4
         5    10       8    4    1    3
 17      1     1       7   10    9    8
         2     3       6    8    6    6
         3     8       4    8    5    4
         4     8       5    7    6    5
         5    10       3    6    4    2
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   19   19   87   90
************************************************************************
