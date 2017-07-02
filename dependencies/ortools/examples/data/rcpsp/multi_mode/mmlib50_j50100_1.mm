jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 7 8 11 
2	3	6		20 17 16 15 14 13 
3	3	6		20 17 16 14 13 12 
4	3	4		15 14 13 10 
5	3	4		27 20 17 9 
6	3	5		27 24 21 20 15 
7	3	3		20 16 14 
8	3	6		27 24 22 21 20 17 
9	3	2		18 13 
10	3	6		27 24 23 21 20 19 
11	3	6		27 24 23 22 20 19 
12	3	3		24 19 18 
13	3	5		34 24 22 21 19 
14	3	4		27 23 22 19 
15	3	2		19 18 
16	3	7		34 28 27 25 24 22 21 
17	3	2		23 19 
18	3	5		36 26 25 23 22 
19	3	5		30 29 28 26 25 
20	3	4		30 29 28 26 
21	3	5		36 32 31 30 29 
22	3	4		32 31 30 29 
23	3	4		34 32 30 29 
24	3	3		31 30 29 
25	3	3		33 32 31 
26	3	3		33 32 31 
27	3	1		29 
28	3	3		37 36 35 
29	3	2		37 33 
30	3	2		37 33 
31	3	2		37 35 
32	3	2		38 35 
33	3	2		39 35 
34	3	1		35 
35	3	5		45 43 42 41 40 
36	3	2		45 38 
37	3	1		38 
38	3	3		49 43 39 
39	3	5		51 50 48 47 44 
40	3	4		51 49 48 47 
41	3	3		49 48 46 
42	3	2		50 47 
43	3	1		44 
44	3	1		46 
45	3	1		46 
46	3	1		52 
47	3	1		52 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	2	0	5	9	9	
	2	5	5	0	3	5	
	3	6	5	0	2	1	
3	1	1	6	0	9	7	
	2	2	0	3	8	7	
	3	5	4	0	7	7	
4	1	9	0	8	5	10	
	2	9	7	0	2	7	
	3	10	6	0	1	4	
5	1	1	0	9	7	4	
	2	4	7	0	7	4	
	3	8	0	8	7	4	
6	1	2	9	0	6	5	
	2	7	0	4	4	3	
	3	8	5	0	4	3	
7	1	1	0	6	7	5	
	2	6	0	5	5	4	
	3	8	0	5	5	3	
8	1	3	5	0	4	9	
	2	4	4	0	3	9	
	3	10	2	0	3	7	
9	1	5	10	0	8	8	
	2	5	0	5	7	8	
	3	8	2	0	3	6	
10	1	1	4	0	3	10	
	2	8	0	2	1	9	
	3	9	3	0	1	7	
11	1	4	8	0	8	7	
	2	7	7	0	7	6	
	3	9	3	0	6	6	
12	1	1	9	0	9	6	
	2	5	7	0	7	6	
	3	9	0	2	6	6	
13	1	4	0	1	5	10	
	2	6	0	1	4	7	
	3	8	2	0	3	1	
14	1	1	0	5	8	4	
	2	3	7	0	7	4	
	3	6	0	5	6	4	
15	1	4	0	5	3	6	
	2	5	0	5	3	5	
	3	7	4	0	2	5	
16	1	7	7	0	8	10	
	2	8	0	4	7	10	
	3	9	3	0	7	10	
17	1	1	6	0	4	5	
	2	7	0	5	2	5	
	3	8	0	5	2	2	
18	1	3	0	3	7	9	
	2	4	0	3	7	5	
	3	4	2	0	6	4	
19	1	3	7	0	8	4	
	2	3	0	6	6	3	
	3	5	7	0	6	2	
20	1	3	9	0	10	9	
	2	5	0	7	8	7	
	3	8	0	4	8	6	
21	1	2	0	6	4	9	
	2	7	8	0	4	7	
	3	10	0	3	4	7	
22	1	3	0	7	7	6	
	2	9	3	0	7	3	
	3	9	0	6	7	3	
23	1	5	0	5	4	8	
	2	7	8	0	4	7	
	3	8	6	0	4	7	
24	1	1	3	0	10	9	
	2	9	2	0	6	8	
	3	10	0	1	5	7	
25	1	1	0	10	3	6	
	2	6	0	9	3	6	
	3	8	0	9	3	5	
26	1	2	6	0	7	8	
	2	8	5	0	5	5	
	3	9	0	7	4	5	
27	1	5	0	6	8	10	
	2	6	5	0	7	8	
	3	10	0	5	6	7	
28	1	4	0	5	9	5	
	2	8	4	0	9	5	
	3	9	4	0	9	4	
29	1	2	8	0	2	6	
	2	3	7	0	1	6	
	3	5	0	4	1	4	
30	1	7	0	8	2	6	
	2	8	0	7	2	6	
	3	10	4	0	1	6	
31	1	2	0	4	8	2	
	2	3	9	0	6	2	
	3	8	9	0	6	1	
32	1	2	0	8	7	9	
	2	4	8	0	6	4	
	3	9	8	0	4	2	
33	1	5	0	7	4	9	
	2	6	6	0	4	8	
	3	6	0	5	3	8	
34	1	3	7	0	9	5	
	2	5	7	0	6	5	
	3	10	0	1	6	5	
35	1	2	0	8	9	8	
	2	3	0	5	9	4	
	3	3	7	0	7	1	
36	1	3	7	0	6	4	
	2	4	7	0	4	4	
	3	4	0	4	3	4	
37	1	3	0	6	6	4	
	2	5	5	0	6	3	
	3	7	4	0	4	2	
38	1	2	7	0	8	6	
	2	4	0	4	8	6	
	3	6	0	3	7	5	
39	1	6	10	0	9	3	
	2	7	0	6	6	3	
	3	9	9	0	4	1	
40	1	2	3	0	8	8	
	2	7	2	0	6	8	
	3	8	0	1	3	4	
41	1	5	0	8	8	4	
	2	7	2	0	8	4	
	3	9	0	8	8	3	
42	1	3	3	0	10	6	
	2	5	3	0	6	6	
	3	7	3	0	6	5	
43	1	2	0	3	9	10	
	2	6	5	0	8	10	
	3	9	4	0	8	10	
44	1	1	0	5	9	5	
	2	3	6	0	8	5	
	3	10	5	0	7	4	
45	1	3	0	7	7	9	
	2	10	4	0	7	7	
	3	10	0	5	7	4	
46	1	4	10	0	8	10	
	2	6	0	6	8	10	
	3	9	0	4	8	10	
47	1	6	8	0	3	4	
	2	7	0	3	2	4	
	3	7	7	0	1	4	
48	1	1	3	0	4	8	
	2	9	2	0	4	7	
	3	10	0	5	4	5	
49	1	1	3	0	7	10	
	2	6	0	5	4	8	
	3	7	0	5	4	7	
50	1	3	8	0	6	9	
	2	5	0	7	6	7	
	3	10	7	0	6	7	
51	1	2	0	3	8	3	
	2	4	1	0	8	3	
	3	8	1	0	6	2	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	40	31	289	292

************************************************************************
