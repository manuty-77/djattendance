************************************************************************
file with basedata            : cr438_.bas
initial value random generator: 222771435
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  133
RESOURCES
  - renewable                 :  4   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       31       14       31
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6  10  11
   3        3          3           5   6   7
   4        3          3           5   6   8
   5        3          2          10  14
   6        3          2          12  17
   7        3          1           8
   8        3          2           9  10
   9        3          1          11
  10        3          3          12  15  17
  11        3          3          12  14  15
  12        3          1          13
  13        3          1          16
  14        3          2          16  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0
  2      1     2       9    8    2   10    3    8
         2     2       9    7    2   10    4    5
         3     8       6    3    2    6    3    1
  3      1     6       7    5    4    2    6    9
         2     6       6    5    4    2    6   10
         3     7       4    4    2    2    5    8
  4      1     2       2    8    8    8    6    8
         2     4       1    6    5    5    6    5
         3    10       1    4    5    4    4    4
  5      1     2       7    9    7    4    6    6
         2     7       7    8    3    4    5    1
         3     7       6    8    5    4    5    3
  6      1     2       9    6    8    3    7    5
         2     5       8    3    5    2    7    4
         3    10       8    2    3    2    4    2
  7      1     7       7   10    4    6    7    4
         2     7       6    9    5    7    7    4
         3    10       3    9    3    6    1    2
  8      1     1       4    9    8    6    8   10
         2     1       3    9    6    7    7   10
         3     9       3    9    4    6    7    7
  9      1     5      10   10    7    9    7   10
         2     6       8    9    6    6    7   10
         3     7       5    9    5    3    7   10
 10      1     1       6    3    4    8   10    7
         2     3       6    2    4    8    7    6
         3    10       6    2    3    6    4    4
 11      1     5       6    6    7    7    8    7
         2     5       6    5    7    8    9    7
         3     9       2    1    7    5    7    5
 12      1     1       6    6    5    5    4    7
         2     6       4    6    5    5    4    6
         3     7       3    5    4    4    3    3
 13      1     4       7    8    7    9    4    8
         2     8       3    7    3    8    4    6
         3     9       2    3    2    8    3    4
 14      1     1       3    7    6    8    7    7
         2     6       3    6    4    6    7    5
         3    10       2    6    4    5    7    1
 15      1     2       8    3    7    7    6    6
         2     3       5    2    7    7    5    6
         3     6       2    2    3    6    4    6
 16      1     2       8    6    4    5    9    9
         2     2       7    7    4    4    9    7
         3    10       6    5    3    3    6    5
 17      1     1       5    6    4    5    8    9
         2     2       5    4    4    4    8    7
         3     4       5    4    4    4    7    6
 18      1     0       0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  N 1  N 2
   16   17   14   15   85   82
************************************************************************
