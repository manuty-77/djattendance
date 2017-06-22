************************************************************************
file with basedata            : md90_.bas
initial value random generator: 868867625
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  91
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       12        8       12
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   9
   3        3          2          11  12
   4        3          3           5   7  13
   5        3          2           8  10
   6        3          3           8  12  13
   7        3          2           8  10
   8        3          1          11
   9        3          2          10  13
  10        3          2          11  12
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       0    2    0    7
         2     7       6    0    0    5
         3     9       0    1    2    0
  3      1     6       0   10    0    6
         2     6       5    0    0    4
         3     8       0   10    8    0
  4      1     4       0    6    0    2
         2     8       0    5    0    2
         3    10       0    4    0    1
  5      1     1       7    0    0    5
         2     2       0    5    0    5
         3     6       1    0    0    1
  6      1     4       0    4    0    2
         2     6       3    0    3    0
         3     6       3    0    0    1
  7      1     2       2    0    0    7
         2     5       0    1    0    6
         3     8       1    0    6    0
  8      1     3       6    0    9    0
         2     3       0    6    0    2
         3     6       6    0    8    0
  9      1     5       5    0    0    9
         2     6       0    3    0    5
         3    10       5    0    6    0
 10      1     2       8    0    0    8
         2     7       0    4    3    0
         3     9       8    0    2    0
 11      1     2       0    9    0    8
         2     5       0    8    0    6
         3     7       0    6    0    6
 12      1     2       7    0    0    8
         2     6       6    0    0    6
         3     7       3    0    8    0
 13      1     1       2    0    0    3
         2     5       0    8    1    0
         3     5       1    0    0    2
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   10   15   46   67
************************************************************************