************************************************************************
file with basedata            : mf38_.bas
initial value random generator: 1104874827
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  238
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       25       19       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6  16
   3        3          3           5  11  17
   4        3          2          10  23
   5        3          3          10  12  20
   6        3          3           7   8  13
   7        3          2           9  23
   8        3          1          28
   9        3          3          10  19  22
  10        3          2          30  31
  11        3          2          12  14
  12        3          3          15  18  26
  13        3          2          15  26
  14        3          3          19  21  30
  15        3          3          24  25  29
  16        3          1          27
  17        3          3          19  24  25
  18        3          1          22
  19        3          1          27
  20        3          1          28
  21        3          2          22  25
  22        3          1          27
  23        3          2          24  26
  24        3          1          31
  25        3          1          31
  26        3          2          28  30
  27        3          1          29
  28        3          1          29
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     7       7    9    9    9
         2     8       7    8    7    7
         3     9       6    7    4    7
  3      1     1       1    8    3    4
         2     3       1    4    3    4
         3     7       1    2    2    2
  4      1     2       6   10    7    9
         2     5       4   10    5    9
         3     7       2   10    2    9
  5      1     7       2    8    6    5
         2     8       2    5    4    4
         3     9       2    3    3    2
  6      1     2      10    5   10    8
         2     8       7    2    8    7
         3    10       4    1    5    6
  7      1     4       6    7   10    8
         2     5       5    3    9    8
         3     8       3    3    9    7
  8      1     3      10    5    7    7
         2     4       6    4    6    6
         3    10       4    4    4    6
  9      1     3       5    9    8   10
         2     9       4    8    6    5
         3     9       4    7    7    6
 10      1     5      10    7   10    2
         2     7       7    4    9    2
         3    10       5    4    7    1
 11      1     4       5    5    7    9
         2     6       4    5    7    5
         3     9       4    4    7    3
 12      1     4       7    8    7    8
         2     4       7    8    9    5
         3     7       4    8    3    3
 13      1     3       5    6    9    5
         2     3       5    5    9    6
         3     7       4    4    3    4
 14      1     3       8    4   10    6
         2     4       7    2    7    2
         3     4       7    3    5    5
 15      1     1       9    4    9    6
         2     9       9    3    6    6
         3    10       8    1    6    5
 16      1     4       3    4    7    9
         2     7       3    3    5    7
         3     9       3    2    3    7
 17      1     6       8    3    5    8
         2     8       8    3    4    6
         3     8       7    3    3    8
 18      1     2       9    6   10   10
         2     2      10    6   10    9
         3     4       8    6    9    6
 19      1     5       8   10    6    5
         2     7       7    5    6    4
         3     9       5    5    5    1
 20      1     4       6   10    9    4
         2     5       6    6    7    2
         3     7       6    2    4    1
 21      1     5       4    6    5    7
         2     9       4    4    4    6
         3    10       4    3    4    6
 22      1     2       8   10    4    6
         2     3       7    6    4    4
         3     9       6    3    4    3
 23      1     2       5    4    7    4
         2     5       5    4    4    4
         3    10       5    4    4    1
 24      1     1       5    7    4    6
         2     2       4    4    4    6
         3     9       2    3    4    5
 25      1     1      10    9    5    7
         2     1       9   10    5    8
         3     6       8    9    5    4
 26      1     1       8    4    9    2
         2     1       5    5    8    2
         3     3       5    2    7    2
 27      1     2       8   10   10    8
         2     3       7    9   10    6
         3     8       7    8   10    4
 28      1     3       7    6    7    7
         2     4       7    6    6    7
         3     7       5    6    5    6
 29      1     2       5    9    6    5
         2     3       4    6    6    5
         3     9       2    4    6    5
 30      1     3       7    2    8    4
         2     5       2    2    6    2
         3     5       5    1    8    4
 31      1     2       5    8    5    4
         2     7       3    8    5    4
         3     9       2    6    4    4
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   25   28  167  142
************************************************************************
