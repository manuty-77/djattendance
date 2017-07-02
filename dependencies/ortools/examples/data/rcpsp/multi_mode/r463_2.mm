************************************************************************
file with basedata            : cr463_.bas
initial value random generator: 139073979
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  125
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       22       11       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   8  17
   3        3          2           7   8
   4        3          3           5   6   8
   5        3          2           9  10
   6        3          3          10  11  14
   7        3          3          11  14  17
   8        3          2           9  14
   9        3          1          16
  10        3          2          12  13
  11        3          2          12  15
  12        3          1          16
  13        3          2          15  16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     1      10    4    6    8    2    6
         2     2       8    3    4    8    2    4
         3     4       6    3    2    8    2    3
  3      1     1       8    9    9    8    9   10
         2     7       5    8    8    8    9    9
         3    10       4    8    6    7    8    9
  4      1     4       4    5    9    4   10    7
         2     4       5    6   10    6    9    6
         3     6       2    4    8    2    8    3
  5      1     7       8    6    9    4    8    8
         2     8       7    5    6    2    8    7
         3    10       4    5    4    2    7    5
  6      1     4       4    6    9    7    9    3
         2     6       4    5    7    6    7    3
         3     8       3    5    3    6    6    1
  7      1     1       8    4    5   10    7    3
         2     1       8    6    6    7    8    3
         3     9       7    3    3    4    6    3
  8      1     2       6    7    5    3    2    2
         2     2       6    6    6    3    2    2
         3     8       5    5    2    1    2    2
  9      1     1       3    6    8    5    7    8
         2     9       2    4    8    5    5    7
         3    10       2    3    4    5    3    6
 10      1     7       5    8    4    2    8    6
         2     8       5    8    3    2    7    6
         3     9       4    7    3    2    7    6
 11      1     6       7    4    3    8    5    3
         2     6       6    6    3    8    5    4
         3    10       2    1    2    8    5    3
 12      1     2       3    5    9    6    9    3
         2     7       3    4    5    6    3    2
         3     7       1    5    6    5    5    3
 13      1     2       7    5   10    8    8    7
         2     5       6    3    8    7    7    6
         3     6       2    3    7    3    6    5
 14      1     4       8    8    8   10   10    7
         2     6       8    8    6    9    9    5
         3     9       6    7    2    8    8    4
 15      1     1       7    8    7    6   10    6
         2     2       4    7    4    6    9    5
         3     5       3    7    2    6    9    3
 16      1     2       2    5    4    5    9    4
         2     4       2    5    3    4    7    2
         3     6       1    4    2    1    5    2
 17      1     4       6    4    6    4    7    2
         2     4       7    7    9    3    5    3
         3     8       5    2    6    1    5    1
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   21   23   27   21  121   87
************************************************************************
