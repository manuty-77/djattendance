jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 6 7 11 
2	3	4		19 17 13 5 
3	3	5		19 17 14 10 9 
4	3	3		17 10 8 
5	3	3		20 14 9 
6	3	5		20 18 15 14 12 
7	3	5		20 19 18 15 14 
8	3	4		20 18 14 12 
9	3	3		18 15 12 
10	3	3		25 20 16 
11	3	3		25 18 16 
12	3	3		27 25 16 
13	3	3		27 25 16 
14	3	2		25 16 
15	3	2		27 16 
16	3	4		26 23 22 21 
17	3	1		18 
18	3	5		28 27 24 23 22 
19	3	5		28 27 24 23 22 
20	3	5		33 28 27 24 23 
21	3	4		33 29 28 24 
22	3	7		38 37 35 33 32 31 30 
23	3	6		38 34 32 31 30 29 
24	3	8		41 39 38 37 35 34 32 30 
25	3	6		38 37 35 33 32 31 
26	3	5		39 34 32 31 30 
27	3	6		39 38 37 36 35 34 
28	3	3		39 38 30 
29	3	5		47 45 41 39 35 
30	3	5		47 45 44 40 36 
31	3	5		47 45 44 41 36 
32	3	6		47 46 45 44 42 40 
33	3	4		47 46 44 39 
34	3	6		47 46 45 44 43 42 
35	3	3		46 44 40 
36	3	4		51 46 43 42 
37	3	4		51 47 44 42 
38	3	3		45 44 42 
39	3	2		42 40 
40	3	3		51 50 43 
41	3	1		42 
42	3	2		50 48 
43	3	2		49 48 
44	3	2		49 48 
45	3	2		51 48 
46	3	1		48 
47	3	1		48 
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
2	1	2	4	9	9	2	
	2	5	4	7	8	2	
	3	6	4	7	8	1	
3	1	3	7	4	10	10	
	2	4	5	3	10	7	
	3	7	3	3	10	5	
4	1	4	10	2	8	5	
	2	6	10	2	8	4	
	3	7	10	2	6	4	
5	1	2	7	4	7	5	
	2	7	6	4	4	5	
	3	8	4	4	4	5	
6	1	7	5	7	8	3	
	2	9	4	4	5	2	
	3	10	4	3	2	2	
7	1	1	8	4	8	5	
	2	2	7	4	7	5	
	3	6	2	4	4	5	
8	1	2	6	2	10	6	
	2	6	3	2	6	3	
	3	7	3	2	6	2	
9	1	1	3	6	8	7	
	2	2	3	6	7	6	
	3	5	3	6	5	5	
10	1	6	5	7	6	7	
	2	9	3	7	5	3	
	3	10	3	4	5	1	
11	1	1	7	2	9	9	
	2	3	5	1	9	5	
	3	5	5	1	8	3	
12	1	1	4	9	9	7	
	2	2	4	7	7	7	
	3	8	3	7	4	6	
13	1	2	6	7	2	9	
	2	3	6	7	1	7	
	3	9	6	4	1	5	
14	1	5	6	6	5	7	
	2	9	5	6	3	5	
	3	10	2	6	3	5	
15	1	2	5	10	2	7	
	2	8	3	7	2	4	
	3	9	2	7	2	1	
16	1	4	5	7	6	5	
	2	8	5	7	5	5	
	3	9	4	7	4	5	
17	1	1	6	9	7	10	
	2	2	6	5	6	8	
	3	6	5	4	4	8	
18	1	2	7	5	7	10	
	2	5	7	3	7	7	
	3	6	7	2	7	5	
19	1	4	9	6	5	2	
	2	5	6	5	5	1	
	3	10	6	5	4	1	
20	1	1	5	9	7	7	
	2	5	5	9	5	6	
	3	6	5	9	5	5	
21	1	4	3	8	7	5	
	2	7	3	4	7	5	
	3	9	2	4	5	4	
22	1	1	10	9	8	5	
	2	8	9	6	6	4	
	3	9	8	5	4	4	
23	1	4	7	8	8	1	
	2	7	7	8	7	1	
	3	8	5	6	6	1	
24	1	5	9	6	5	10	
	2	8	3	5	4	8	
	3	10	2	5	3	8	
25	1	5	4	2	6	10	
	2	6	3	2	4	8	
	3	7	2	2	3	5	
26	1	5	7	9	8	10	
	2	7	6	7	4	7	
	3	10	4	7	4	6	
27	1	2	7	8	5	9	
	2	6	4	6	4	7	
	3	9	3	6	4	5	
28	1	3	9	2	4	7	
	2	7	7	1	2	7	
	3	8	7	1	2	6	
29	1	1	6	6	7	8	
	2	4	4	5	3	4	
	3	7	3	4	2	1	
30	1	4	2	8	9	6	
	2	9	2	7	8	3	
	3	10	2	2	8	3	
31	1	6	2	3	8	10	
	2	8	1	1	8	6	
	3	9	1	1	8	1	
32	1	1	3	6	4	8	
	2	2	1	6	3	8	
	3	3	1	6	3	7	
33	1	3	8	9	5	1	
	2	4	7	8	3	1	
	3	9	4	8	3	1	
34	1	2	3	6	5	7	
	2	4	3	3	4	7	
	3	5	3	3	2	7	
35	1	6	5	7	10	8	
	2	9	5	6	9	6	
	3	10	4	6	9	4	
36	1	1	8	8	7	5	
	2	3	4	6	7	4	
	3	7	2	4	7	3	
37	1	3	10	3	5	5	
	2	6	10	3	4	4	
	3	10	10	3	3	2	
38	1	2	8	8	2	7	
	2	6	7	7	2	5	
	3	7	5	5	2	2	
39	1	2	7	6	6	6	
	2	4	6	5	4	5	
	3	7	5	5	3	5	
40	1	7	7	7	8	7	
	2	8	7	7	8	6	
	3	9	7	7	8	3	
41	1	4	9	7	8	8	
	2	6	7	6	7	6	
	3	8	7	5	6	6	
42	1	6	1	5	6	5	
	2	7	1	5	6	4	
	3	10	1	3	6	2	
43	1	1	5	4	5	8	
	2	2	3	4	3	4	
	3	5	3	4	2	4	
44	1	7	9	10	7	5	
	2	8	8	9	7	3	
	3	9	8	8	5	2	
45	1	2	9	10	7	2	
	2	5	6	7	6	2	
	3	8	5	5	5	1	
46	1	3	7	10	9	6	
	2	7	6	7	9	5	
	3	8	4	3	9	5	
47	1	3	8	8	3	5	
	2	9	6	6	2	5	
	3	10	3	6	2	5	
48	1	2	8	3	7	10	
	2	8	8	2	6	5	
	3	9	7	2	5	2	
49	1	1	7	2	9	3	
	2	3	6	1	6	3	
	3	9	5	1	4	3	
50	1	1	10	7	8	6	
	2	5	7	7	8	3	
	3	9	3	3	7	1	
51	1	7	9	8	4	7	
	2	8	9	3	3	5	
	3	10	9	2	2	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	17	19	308	289

************************************************************************
