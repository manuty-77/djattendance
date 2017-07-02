************************************************************************
file with basedata            : mf12_.bas
initial value random generator: 544980411
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  239
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       28        1       28
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1           6
   3        3          3          10  18  21
   4        3          3           5   6  15
   5        3          3           7   9  13
   6        3          3           8  10  19
   7        3          3          12  20  24
   8        3          1          16
   9        3          3          11  19  27
  10        3          2          23  25
  11        3          1          14
  12        3          2          18  22
  13        3          3          21  23  27
  14        3          2          17  22
  15        3          2          29  30
  16        3          3          18  22  29
  17        3          1          31
  18        3          1          25
  19        3          2          24  30
  20        3          1          21
  21        3          2          26  28
  22        3          1          26
  23        3          3          24  26  28
  24        3          2          29  31
  25        3          1          27
  26        3          1          31
  27        3          1          28
  28        3          1          30
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       0    6    0    9
         2     5       0    5    5    0
         3     6       0    4    0    9
  3      1     1       0    9    3    0
         2     9       0    6    0   10
         3    10       0    4    0    8
  4      1     1       9    0    0    8
         2     2       8    0    0    8
         3     7       6    0    0    4
  5      1     1       4    0    0   10
         2     1       5    0    0    9
         3    10       4    0    8    0
  6      1     4       9    0    0    5
         2     8       3    0    9    0
         3     8       0    8    8    0
  7      1     4       8    0    4    0
         2     5       0    5    0    8
         3     9       7    0    3    0
  8      1     2       8    0    4    0
         2     4       0    3    0    6
         3    10       6    0    0    4
  9      1     5       0    9    0    8
         2     6       0    9    8    0
         3     8       0    8    4    0
 10      1     5       0    2    0    6
         2     9       0    2    1    0
         3    10       0    2    0    4
 11      1     4       0    9    0    6
         2     6       0    8   10    0
         3     7       0    5   10    0
 12      1     3       0   10    0   10
         2     6       4    0    0    6
         3     8       0    9    0    4
 13      1     6       6    0    0    8
         2     7       6    0    9    0
         3     9       6    0    7    0
 14      1     4       0    8    0    1
         2     6       0    5    0    1
         3    10       0    1    0    1
 15      1     1       7    0    0    7
         2     2       7    0    0    6
         3     6       6    0    7    0
 16      1     4       6    0    7    0
         2     8       0    3    5    0
         3     9       0    2    2    0
 17      1     4       2    0    8    0
         2     4       0    6    8    0
         3     5       3    0    5    0
 18      1     2      10    0    6    0
         2     5       9    0    0    8
         3     8       9    0    0    6
 19      1     1       0    8    0    9
         2     6       0    3    7    0
         3    10       4    0    0    9
 20      1     5       0    5    0    5
         2     6       7    0    0    2
         3    10       2    0    7    0
 21      1     7       7    0    4    0
         2     8       0    9    0    6
         3    10       0    7    3    0
 22      1     1       7    0    9    0
         2     3       3    0    0    3
         3     7       0   10    5    0
 23      1     2       0    3    6    0
         2     3       5    0    4    0
         3     5       0    2    0    4
 24      1     2       0    7    0    8
         2     4       7    0    0    3
         3     7       0    7    6    0
 25      1     4       8    0    0    9
         2     5       0    7    7    0
         3     8       0    4    0    8
 26      1     3       0    9    0    4
         2     4       0    6    8    0
         3     8       0    5    7    0
 27      1     1      10    0    0    9
         2     2       8    0    6    0
         3     7       6    0    4    0
 28      1     5       0    3   10    0
         2     6       9    0    8    0
         3     7       9    0    6    0
 29      1     1       0    8    0    7
         2     2       0    7    7    0
         3     2       0    7    0    7
 30      1     1       0    3    5    0
         2     7       0    3    0    9
         3     8       0    2    0    3
 31      1     1       7    0    8    0
         2     5       0    5    0    5
         3    10       4    0    0    4
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   36   32   96   99
************************************************************************
