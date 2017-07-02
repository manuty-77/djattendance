jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	12		2 3 4 5 6 7 8 9 10 12 14 18 
2	3	8		29 25 22 21 16 15 13 11 
3	3	6		29 25 24 17 15 11 
4	3	6		29 25 20 17 15 11 
5	3	7		34 33 32 29 24 20 11 
6	3	9		33 32 31 29 28 25 23 19 17 
7	3	7		32 29 28 20 19 17 13 
8	3	5		34 33 20 17 11 
9	3	5		34 33 29 17 11 
10	3	8		34 33 32 31 28 21 19 17 
11	3	5		39 31 28 23 19 
12	3	4		35 34 31 15 
13	3	9		51 39 37 35 34 33 31 30 27 
14	3	7		50 37 34 32 31 26 23 
15	3	8		51 50 39 37 33 30 27 26 
16	3	8		51 50 39 37 35 34 31 27 
17	3	7		51 50 49 39 35 27 22 
18	3	7		50 39 37 35 33 31 26 
19	3	5		50 37 30 27 26 
20	3	5		50 49 39 35 22 
21	3	7		51 50 49 44 39 37 35 
22	3	8		48 47 46 44 43 38 37 36 
23	3	8		51 49 47 46 45 44 43 35 
24	3	5		50 47 42 39 30 
25	3	5		44 43 41 37 34 
26	3	8		49 47 46 44 43 42 40 38 
27	3	6		48 47 46 44 38 36 
28	3	5		48 46 44 43 37 
29	3	5		44 43 41 40 37 
30	3	5		46 45 43 40 38 
31	3	3		48 44 36 
32	3	5		44 43 42 41 40 
33	3	2		47 36 
34	3	4		49 48 45 40 
35	3	1		36 
36	3	3		42 41 40 
37	3	2		45 42 
38	3	1		41 
39	3	1		43 
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
2	1	1	3	9	5	7	3	9	
	2	2	3	8	4	6	1	7	
	3	9	3	8	3	4	1	3	
3	1	2	10	7	8	5	8	6	
	2	4	9	4	7	5	4	6	
	3	7	7	4	7	5	3	2	
4	1	4	10	7	7	6	4	3	
	2	5	8	6	6	4	4	2	
	3	8	8	5	4	3	4	2	
5	1	8	5	7	5	2	7	6	
	2	9	2	7	4	1	5	5	
	3	10	2	7	3	1	5	4	
6	1	5	8	10	7	8	3	9	
	2	6	7	8	5	8	2	6	
	3	8	3	7	4	8	2	4	
7	1	4	9	7	9	8	10	7	
	2	7	8	5	7	4	10	5	
	3	10	5	2	5	3	10	2	
8	1	3	4	8	5	5	4	4	
	2	6	4	7	5	4	3	3	
	3	8	4	6	1	4	1	3	
9	1	5	5	8	4	4	9	7	
	2	6	5	4	3	3	8	7	
	3	9	4	1	3	3	8	7	
10	1	2	6	6	7	6	9	6	
	2	3	5	4	7	3	9	3	
	3	6	4	3	6	2	9	1	
11	1	5	6	10	6	8	9	6	
	2	6	5	10	3	7	6	5	
	3	9	4	10	3	7	5	5	
12	1	1	9	7	10	6	7	8	
	2	4	8	5	7	4	6	8	
	3	10	8	4	4	1	3	7	
13	1	1	8	4	8	4	7	7	
	2	7	8	4	6	4	5	5	
	3	9	7	2	5	2	3	3	
14	1	4	8	5	8	4	9	6	
	2	5	6	5	7	4	8	5	
	3	9	6	4	6	3	8	2	
15	1	5	6	9	8	6	7	6	
	2	6	5	5	7	4	5	6	
	3	8	5	3	6	1	5	5	
16	1	3	5	9	9	1	9	4	
	2	4	4	6	7	1	8	3	
	3	6	3	6	4	1	8	3	
17	1	3	7	7	5	6	9	7	
	2	4	7	7	5	5	6	6	
	3	10	7	7	4	5	6	5	
18	1	4	5	7	7	3	2	9	
	2	5	4	6	5	2	1	5	
	3	6	4	3	4	2	1	3	
19	1	1	10	9	5	6	8	4	
	2	6	9	6	5	4	6	3	
	3	8	7	3	5	3	2	2	
20	1	4	9	5	3	8	5	6	
	2	7	9	4	3	6	4	5	
	3	8	9	4	1	4	4	1	
21	1	1	1	6	8	6	9	8	
	2	3	1	3	6	6	8	5	
	3	4	1	2	4	3	7	5	
22	1	5	1	10	6	4	3	4	
	2	8	1	7	6	4	2	2	
	3	9	1	3	6	4	2	1	
23	1	1	9	5	5	10	10	2	
	2	7	8	2	2	10	5	1	
	3	10	7	2	1	10	4	1	
24	1	1	9	2	1	7	7	8	
	2	2	8	2	1	7	6	8	
	3	7	5	2	1	6	6	8	
25	1	5	7	7	4	6	3	4	
	2	8	6	5	3	5	3	4	
	3	10	4	4	3	5	1	4	
26	1	3	4	8	9	7	6	2	
	2	4	4	6	9	3	5	2	
	3	6	4	6	9	2	4	2	
27	1	3	8	9	9	5	3	6	
	2	4	4	6	8	3	3	5	
	3	8	4	5	7	3	3	5	
28	1	1	8	6	8	5	6	6	
	2	2	6	6	5	5	5	5	
	3	7	6	5	5	4	5	4	
29	1	2	5	8	3	8	6	9	
	2	3	3	8	3	5	3	6	
	3	4	2	8	3	5	1	3	
30	1	4	7	8	4	8	10	6	
	2	5	6	8	4	7	8	5	
	3	8	5	7	3	6	8	4	
31	1	7	6	10	5	3	10	3	
	2	8	5	8	5	3	7	3	
	3	9	4	8	4	1	4	3	
32	1	1	6	6	7	7	6	6	
	2	4	4	5	7	6	4	5	
	3	7	4	4	5	4	1	1	
33	1	2	2	4	7	6	9	9	
	2	3	2	4	6	4	8	5	
	3	7	1	2	4	1	8	4	
34	1	1	4	7	3	10	8	9	
	2	2	4	7	1	9	5	9	
	3	10	4	6	1	8	3	8	
35	1	2	2	2	2	6	8	10	
	2	9	1	2	2	4	5	8	
	3	10	1	1	2	4	5	8	
36	1	1	6	9	7	8	9	2	
	2	7	3	8	7	4	7	2	
	3	8	2	8	7	2	4	2	
37	1	7	10	6	5	6	4	3	
	2	9	6	2	5	6	2	3	
	3	10	6	1	5	6	2	3	
38	1	2	3	2	8	9	10	9	
	2	7	3	2	4	6	8	8	
	3	8	3	2	2	6	8	7	
39	1	6	5	7	7	10	6	10	
	2	9	5	6	6	7	5	9	
	3	10	5	6	4	7	1	9	
40	1	1	7	8	10	8	6	8	
	2	6	7	6	7	7	4	6	
	3	7	5	6	4	6	4	4	
41	1	1	6	7	2	2	5	9	
	2	6	4	7	1	1	4	9	
	3	9	4	7	1	1	4	8	
42	1	4	7	8	8	2	4	5	
	2	5	5	5	7	2	2	5	
	3	9	2	3	6	2	1	3	
43	1	1	9	3	7	6	6	8	
	2	2	7	3	7	5	5	6	
	3	7	6	3	7	5	5	5	
44	1	1	7	7	10	6	6	5	
	2	2	7	6	6	6	5	4	
	3	4	7	5	4	6	4	2	
45	1	4	6	4	9	9	7	5	
	2	5	3	3	6	8	7	3	
	3	10	3	3	5	8	7	2	
46	1	1	6	9	6	8	7	10	
	2	3	3	7	4	4	7	6	
	3	4	2	4	4	4	7	5	
47	1	3	10	6	6	10	3	3	
	2	6	5	4	5	7	1	2	
	3	10	4	4	3	4	1	2	
48	1	2	4	8	8	1	6	7	
	2	6	2	7	5	1	2	7	
	3	8	2	7	4	1	1	5	
49	1	4	7	5	9	8	7	8	
	2	5	6	3	7	7	3	7	
	3	9	6	3	5	7	3	6	
50	1	3	4	8	9	8	9	6	
	2	7	3	7	9	6	9	6	
	3	10	3	6	9	2	7	6	
51	1	1	7	5	4	5	6	7	
	2	5	6	4	4	4	6	7	
	3	10	5	1	4	3	4	7	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	46	49	294	279	303	288

************************************************************************
