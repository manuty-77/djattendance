jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 7 8 9 11 
2	3	4		20 13 6 5 
3	3	5		26 23 18 16 5 
4	3	8		32 28 26 22 18 17 13 12 
5	3	7		35 32 28 21 15 14 12 
6	3	6		28 26 21 18 17 12 
7	3	7		35 32 28 25 23 22 12 
8	3	3		35 26 10 
9	3	8		51 32 31 27 25 24 16 15 
10	3	4		51 32 25 12 
11	3	5		35 27 26 22 19 
12	3	8		49 47 36 34 31 30 27 24 
13	3	6		50 48 35 30 27 23 
14	3	8		49 48 47 46 34 30 29 24 
15	3	7		49 46 38 36 30 29 22 
16	3	7		49 46 38 36 30 29 22 
17	3	7		51 49 47 31 30 29 25 
18	3	6		51 49 35 33 31 30 
19	3	6		51 47 38 36 31 29 
20	3	4		46 38 29 22 
21	3	7		50 49 46 44 38 33 29 
22	3	6		50 48 47 45 44 33 
23	3	5		51 49 44 38 33 
24	3	4		45 44 38 33 
25	3	4		46 45 44 33 
26	3	4		49 45 44 33 
27	3	3		38 33 29 
28	3	6		51 48 47 46 45 37 
29	3	4		45 43 41 37 
30	3	4		44 43 41 37 
31	3	6		48 46 45 43 41 39 
32	3	6		49 44 42 41 40 39 
33	3	3		43 41 37 
34	3	3		50 41 37 
35	3	5		47 46 44 41 39 
36	3	4		45 44 40 39 
37	3	3		42 40 39 
38	3	1		39 
39	3	1		52 
40	3	1		52 
41	3	1		52 
42	3	1		52 
43	3	1		52 
44	3	1		52 
45	3	1		52 
46	3	1		52 
47	3	1		52 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	6	7	5	9	8	5	7	
	2	8	7	3	7	7	2	3	
	3	9	7	1	6	4	2	3	
3	1	3	8	10	2	8	6	9	
	2	4	7	9	2	7	6	9	
	3	8	6	8	1	4	5	9	
4	1	4	8	10	9	8	7	3	
	2	5	7	9	4	5	7	3	
	3	10	7	7	4	2	6	3	
5	1	1	6	9	2	6	8	4	
	2	3	2	8	2	6	6	3	
	3	8	2	7	2	3	6	3	
6	1	3	7	9	7	7	3	3	
	2	8	7	9	7	4	2	3	
	3	10	6	9	6	4	2	2	
7	1	6	8	2	7	8	9	8	
	2	7	8	2	7	7	5	8	
	3	8	5	2	7	7	3	7	
8	1	2	9	10	9	8	7	9	
	2	8	7	5	9	8	5	8	
	3	10	5	1	7	8	1	8	
9	1	1	9	9	6	7	10	7	
	2	4	8	7	5	7	9	6	
	3	10	8	7	5	7	7	6	
10	1	1	2	8	8	3	9	8	
	2	4	1	7	4	1	9	8	
	3	5	1	4	4	1	9	6	
11	1	4	1	9	8	4	8	7	
	2	8	1	7	7	3	4	4	
	3	10	1	7	7	3	2	1	
12	1	1	8	4	7	6	3	3	
	2	4	7	2	7	5	3	2	
	3	5	6	1	5	3	3	1	
13	1	5	9	8	5	5	7	7	
	2	7	9	6	5	5	7	7	
	3	10	9	6	5	3	6	6	
14	1	1	4	5	1	5	4	5	
	2	3	3	4	1	5	4	3	
	3	9	2	3	1	5	4	3	
15	1	6	5	10	3	1	7	8	
	2	8	4	6	3	1	6	7	
	3	9	3	6	3	1	5	6	
16	1	1	4	8	8	3	9	4	
	2	2	2	3	6	3	8	3	
	3	5	2	2	4	3	8	3	
17	1	3	3	8	8	7	5	6	
	2	4	2	6	8	4	4	5	
	3	9	2	5	6	2	3	1	
18	1	1	5	7	4	7	10	7	
	2	2	4	6	4	4	5	5	
	3	9	3	5	3	3	5	1	
19	1	4	9	7	10	7	8	6	
	2	6	7	3	9	5	8	6	
	3	10	5	1	9	5	8	5	
20	1	2	6	6	4	4	8	9	
	2	3	6	6	2	4	7	9	
	3	8	5	6	1	1	5	9	
21	1	4	7	9	9	7	6	7	
	2	8	3	6	7	6	4	5	
	3	10	2	1	7	4	4	5	
22	1	6	5	3	5	8	6	6	
	2	8	3	2	3	6	5	5	
	3	10	2	2	3	4	5	5	
23	1	1	3	8	6	8	6	7	
	2	7	2	8	5	5	6	5	
	3	8	1	7	4	4	3	5	
24	1	6	10	7	10	6	9	7	
	2	9	9	6	8	4	8	7	
	3	10	9	5	5	3	7	6	
25	1	2	8	4	8	7	9	9	
	2	4	7	4	4	6	7	8	
	3	5	5	4	4	2	6	8	
26	1	1	5	8	2	9	3	8	
	2	3	5	3	2	6	3	7	
	3	9	5	1	2	5	3	7	
27	1	2	5	5	7	3	9	8	
	2	5	4	5	7	3	8	8	
	3	6	4	5	7	2	8	8	
28	1	2	6	7	8	10	1	5	
	2	5	3	6	8	7	1	3	
	3	8	3	6	8	5	1	3	
29	1	1	4	8	9	8	7	6	
	2	5	2	6	8	5	7	5	
	3	8	1	4	7	4	6	5	
30	1	4	4	8	10	6	6	4	
	2	5	4	8	10	5	6	3	
	3	8	3	8	10	5	5	3	
31	1	3	6	1	8	4	10	7	
	2	6	4	1	6	4	9	5	
	3	9	4	1	3	4	9	4	
32	1	3	7	8	6	3	5	9	
	2	7	5	7	5	2	4	7	
	3	9	3	7	5	1	2	6	
33	1	7	4	8	7	9	9	7	
	2	8	3	4	7	6	8	7	
	3	10	3	4	6	2	7	6	
34	1	3	5	7	5	6	8	2	
	2	4	4	6	5	5	6	2	
	3	6	4	5	5	4	3	2	
35	1	1	8	2	9	4	9	9	
	2	2	6	1	7	3	8	5	
	3	3	3	1	4	3	7	5	
36	1	2	7	10	10	4	7	5	
	2	7	6	8	9	4	5	3	
	3	8	4	7	7	3	4	3	
37	1	1	6	5	2	6	6	4	
	2	6	5	3	1	5	5	4	
	3	10	4	3	1	4	3	4	
38	1	8	3	6	3	6	8	8	
	2	9	3	6	2	6	8	7	
	3	10	1	1	2	6	8	6	
39	1	3	6	6	7	9	8	10	
	2	4	5	4	5	9	7	7	
	3	5	4	3	4	9	7	4	
40	1	2	6	8	4	8	7	6	
	2	7	5	8	4	6	7	6	
	3	9	4	8	4	6	3	6	
41	1	1	6	10	7	5	4	7	
	2	4	5	7	7	4	4	6	
	3	9	5	4	7	4	1	3	
42	1	5	4	6	3	9	5	3	
	2	8	4	3	3	6	4	2	
	3	10	4	1	3	6	4	2	
43	1	6	10	5	3	6	7	10	
	2	7	10	5	3	5	4	6	
	3	9	10	5	2	5	2	4	
44	1	3	8	9	3	9	8	6	
	2	5	7	9	2	9	8	4	
	3	7	6	8	1	8	6	4	
45	1	3	8	1	8	7	2	6	
	2	4	5	1	6	5	2	4	
	3	6	4	1	5	4	2	3	
46	1	4	8	8	7	6	9	10	
	2	8	5	6	7	6	4	6	
	3	10	3	4	7	3	4	3	
47	1	1	10	9	9	6	9	7	
	2	5	6	6	9	6	7	6	
	3	6	2	2	9	5	7	5	
48	1	4	2	3	5	9	5	4	
	2	7	2	2	5	8	4	3	
	3	10	2	2	3	7	1	3	
49	1	2	6	4	7	7	4	8	
	2	4	4	2	7	5	3	5	
	3	5	3	1	6	3	3	1	
50	1	2	5	8	7	6	8	10	
	2	3	5	8	5	6	6	6	
	3	4	5	8	4	6	4	4	
51	1	6	6	3	6	3	7	7	
	2	7	6	3	6	3	3	5	
	3	8	4	3	5	3	1	3	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	22	24	296	287	311	303

************************************************************************
