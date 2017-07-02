jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 5 7 8 10 
2	6	2		6 4 
3	6	1		4 
4	6	4		13 12 11 9 
5	6	3		16 9 6 
6	6	3		15 13 12 
7	6	3		15 13 12 
8	6	2		19 12 
9	6	4		19 18 15 14 
10	6	4		19 18 17 14 
11	6	4		27 25 17 16 
12	6	3		18 17 14 
13	6	7		27 25 24 22 21 20 19 
14	6	5		27 25 24 21 20 
15	6	5		25 23 22 21 20 
16	6	4		24 23 21 19 
17	6	2		22 20 
18	6	3		28 25 23 
19	6	6		35 33 30 29 28 26 
20	6	7		39 35 34 33 32 30 28 
21	6	5		35 33 32 28 26 
22	6	4		35 29 28 26 
23	6	7		39 35 34 33 32 31 30 
24	6	5		35 34 33 30 28 
25	6	3		35 30 29 
26	6	3		39 34 31 
27	6	3		39 32 30 
28	6	5		51 41 37 36 31 
29	6	4		50 39 34 32 
30	6	5		51 50 42 37 36 
31	6	5		50 49 43 42 38 
32	6	6		49 45 43 42 41 40 
33	6	5		51 49 45 42 40 
34	6	3		51 42 37 
35	6	5		50 48 47 43 42 
36	6	4		49 47 45 44 
37	6	2		45 40 
38	6	2		45 40 
39	6	2		45 41 
40	6	3		48 47 44 
41	6	2		47 46 
42	6	1		44 
43	6	1		44 
44	6	1		46 
45	6	1		48 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	3	25	25	11	14	14	22	12	22	
	2	10	17	23	10	10	10	21	10	18	
	3	11	15	19	10	8	8	21	9	15	
	4	16	10	17	10	5	7	20	8	14	
	5	28	7	13	9	5	6	20	7	11	
	6	29	2	12	9	1	4	19	5	6	
3	1	3	3	21	17	17	8	14	20	28	
	2	9	3	16	16	14	7	14	19	26	
	3	10	3	15	13	10	7	12	19	24	
	4	16	3	11	13	6	5	9	18	21	
	5	22	3	8	10	6	4	7	17	16	
	6	30	3	6	10	2	3	2	17	15	
4	1	12	20	17	21	12	28	24	18	22	
	2	19	17	12	19	12	27	21	17	21	
	3	23	17	12	17	9	27	20	14	21	
	4	24	15	9	15	7	27	20	11	19	
	5	25	14	7	12	3	27	19	9	19	
	6	26	13	6	10	3	27	18	9	18	
5	1	4	4	4	13	22	27	8	16	19	
	2	7	4	4	12	19	24	6	16	19	
	3	12	3	4	11	15	23	4	16	19	
	4	15	3	4	10	11	22	3	16	19	
	5	28	2	4	9	9	19	3	16	19	
	6	29	2	4	9	8	19	2	16	19	
6	1	6	18	17	17	22	17	26	7	15	
	2	7	15	14	16	20	16	25	5	12	
	3	11	15	13	14	19	16	25	4	10	
	4	12	10	11	14	16	15	23	3	9	
	5	14	8	10	12	15	14	22	2	4	
	6	15	7	7	11	15	14	21	2	3	
7	1	1	21	21	25	8	30	19	22	25	
	2	8	16	17	24	8	27	19	21	22	
	3	15	15	16	24	8	26	19	21	21	
	4	18	9	12	24	8	25	19	21	21	
	5	21	5	10	23	8	25	19	21	19	
	6	29	2	10	23	8	23	19	21	18	
8	1	11	16	13	25	10	18	26	28	10	
	2	12	13	13	24	9	16	23	27	7	
	3	13	12	13	24	8	12	22	25	7	
	4	17	9	12	23	8	10	19	23	5	
	5	18	9	12	22	6	10	17	21	4	
	6	23	7	12	22	6	6	15	20	2	
9	1	6	10	21	23	10	21	8	9	23	
	2	7	9	20	21	8	17	7	9	18	
	3	22	9	20	21	8	15	7	9	17	
	4	23	8	17	19	7	12	7	9	12	
	5	24	8	15	17	5	9	6	9	10	
	6	25	7	15	14	3	9	6	9	5	
10	1	1	21	14	22	15	24	14	17	27	
	2	4	20	14	21	14	20	14	14	23	
	3	5	19	12	19	13	20	12	13	22	
	4	7	18	10	14	13	16	11	13	20	
	5	21	16	10	11	12	16	11	12	18	
	6	26	13	8	10	11	14	10	11	16	
11	1	6	15	24	9	16	23	18	20	20	
	2	7	15	23	7	15	20	17	18	20	
	3	18	15	22	7	13	15	17	17	18	
	4	22	15	22	4	10	13	17	15	17	
	5	25	14	21	2	9	8	15	13	17	
	6	29	14	21	2	7	5	15	11	15	
12	1	1	24	26	12	8	28	19	11	21	
	2	6	22	25	10	8	27	17	9	21	
	3	7	22	23	7	8	23	16	8	19	
	4	15	22	23	6	8	23	16	8	16	
	5	17	21	22	5	8	19	15	5	16	
	6	20	20	21	4	8	18	14	3	14	
13	1	4	26	17	19	3	28	19	21	20	
	2	5	22	15	17	2	27	15	19	18	
	3	6	21	13	16	2	27	14	16	16	
	4	8	20	13	15	2	27	13	14	13	
	5	13	16	10	10	2	26	10	13	12	
	6	30	14	9	8	2	25	6	12	10	
14	1	1	9	9	15	20	20	17	27	27	
	2	3	8	7	13	18	19	17	23	23	
	3	4	7	6	13	13	19	14	22	21	
	4	15	6	4	11	10	17	13	14	19	
	5	21	5	3	10	8	17	13	13	17	
	6	23	4	2	7	5	16	11	10	16	
15	1	8	23	11	18	15	9	23	27	16	
	2	12	23	10	17	12	8	22	21	14	
	3	13	21	9	17	11	6	18	16	12	
	4	16	17	7	16	8	4	13	14	12	
	5	25	16	7	16	6	2	6	10	11	
	6	28	11	6	16	4	2	3	6	8	
16	1	4	18	10	21	20	29	22	20	14	
	2	12	16	9	20	19	28	20	20	13	
	3	15	14	8	19	19	28	18	20	13	
	4	18	12	8	16	18	28	16	20	12	
	5	24	10	7	16	17	28	10	20	11	
	6	25	7	6	13	17	28	10	20	11	
17	1	3	17	23	14	24	28	19	27	5	
	2	5	13	23	12	21	23	18	23	4	
	3	18	11	23	11	16	22	15	17	4	
	4	23	9	23	11	13	19	13	14	3	
	5	24	7	22	8	8	16	12	12	3	
	6	29	3	22	7	5	13	10	6	2	
18	1	7	3	22	19	8	23	13	20	21	
	2	15	2	22	18	7	20	12	17	20	
	3	21	2	22	18	6	18	10	15	16	
	4	22	1	21	18	6	17	6	10	14	
	5	23	1	21	17	5	15	4	8	11	
	6	26	1	21	16	4	14	3	5	8	
19	1	1	21	21	23	22	15	21	22	6	
	2	7	20	21	20	22	15	21	21	6	
	3	12	18	21	16	22	11	21	16	4	
	4	18	15	21	14	22	9	20	9	4	
	5	20	14	21	10	22	8	20	6	2	
	6	28	12	21	4	22	5	20	4	2	
20	1	1	19	13	4	12	25	25	19	30	
	2	2	17	12	4	11	24	24	18	25	
	3	4	14	11	4	7	24	24	18	23	
	4	11	12	10	3	6	22	23	18	20	
	5	15	12	9	3	4	21	23	17	14	
	6	18	10	9	2	2	20	23	17	10	
21	1	1	9	23	11	21	24	29	8	14	
	2	5	8	22	9	19	18	29	8	12	
	3	13	7	20	8	18	17	29	7	10	
	4	17	5	19	6	18	12	28	7	9	
	5	18	4	15	6	15	9	27	6	4	
	6	27	4	15	4	15	7	27	6	4	
22	1	8	11	16	16	22	29	23	26	23	
	2	10	10	15	15	18	27	23	24	23	
	3	16	9	14	14	16	25	23	23	23	
	4	23	6	13	12	13	25	23	18	22	
	5	27	5	11	12	12	23	23	16	22	
	6	28	3	10	11	11	22	23	15	21	
23	1	2	21	13	11	22	28	26	12	22	
	2	4	20	13	10	21	28	22	11	20	
	3	8	18	13	8	19	27	21	10	19	
	4	9	17	13	8	19	27	21	7	18	
	5	13	16	12	6	17	27	18	7	18	
	6	25	16	12	6	17	26	16	5	17	
24	1	13	20	25	20	23	10	28	27	27	
	2	16	20	20	18	22	10	28	23	23	
	3	17	18	19	17	19	9	26	21	19	
	4	19	17	18	17	17	9	24	16	16	
	5	24	15	15	16	17	8	21	16	14	
	6	28	14	13	15	14	8	21	11	10	
25	1	5	19	10	13	21	17	25	21	24	
	2	9	17	10	10	21	15	24	20	23	
	3	16	16	9	10	20	15	23	20	22	
	4	17	13	9	9	20	14	21	20	22	
	5	22	11	9	7	18	14	19	20	21	
	6	28	10	8	7	18	13	18	20	21	
26	1	10	5	18	23	23	21	26	17	24	
	2	15	5	17	20	22	21	25	14	18	
	3	19	5	12	19	19	21	21	11	14	
	4	21	4	12	18	19	21	17	9	13	
	5	23	3	9	18	17	21	11	9	9	
	6	27	3	5	17	16	21	8	7	4	
27	1	10	7	25	15	8	29	10	28	24	
	2	19	6	20	14	8	28	10	22	24	
	3	21	5	19	14	8	27	7	20	23	
	4	22	5	15	14	8	27	5	16	23	
	5	26	5	13	14	8	27	5	13	23	
	6	28	4	10	14	8	26	3	11	22	
28	1	3	18	6	16	18	16	27	18	25	
	2	14	15	6	16	17	14	26	18	24	
	3	15	13	6	16	17	13	24	18	17	
	4	18	11	5	16	16	13	23	18	12	
	5	20	9	5	16	15	11	19	18	12	
	6	25	5	4	16	15	8	18	18	8	
29	1	6	11	25	25	22	25	5	26	15	
	2	7	11	24	22	21	22	4	25	11	
	3	15	9	24	19	18	20	3	23	10	
	4	16	8	24	17	18	20	2	23	9	
	5	23	7	24	14	14	17	2	21	7	
	6	28	6	24	13	14	16	1	19	5	
30	1	2	21	18	9	8	24	3	7	18	
	2	8	20	16	9	7	18	2	7	17	
	3	9	17	14	6	6	18	2	5	17	
	4	16	16	11	5	5	13	1	5	16	
	5	24	16	10	4	4	9	1	4	16	
	6	25	13	5	2	3	7	1	3	16	
31	1	4	12	9	15	17	20	23	27	21	
	2	5	10	8	15	16	18	21	26	16	
	3	18	7	7	15	14	17	20	24	14	
	4	19	4	7	15	13	14	18	23	10	
	5	22	4	6	15	13	13	17	22	7	
	6	29	1	5	15	12	10	16	22	3	
32	1	2	20	22	22	10	20	6	6	17	
	2	17	20	16	22	10	20	6	5	16	
	3	18	18	16	22	10	19	5	5	14	
	4	23	16	11	22	9	19	4	4	12	
	5	25	15	4	22	9	19	3	3	9	
	6	27	15	3	22	9	18	2	2	8	
33	1	3	11	15	16	19	24	26	26	23	
	2	6	10	14	16	18	22	21	23	23	
	3	10	9	13	14	17	19	20	20	22	
	4	17	8	12	14	15	18	15	15	20	
	5	19	7	12	13	15	17	14	9	20	
	6	20	7	11	11	13	15	10	6	18	
34	1	7	9	12	24	18	17	26	26	15	
	2	8	6	10	23	17	14	26	22	12	
	3	10	5	8	18	15	12	24	20	11	
	4	14	5	4	17	14	11	23	19	8	
	5	21	3	2	13	13	8	21	15	7	
	6	22	2	1	12	13	5	19	14	5	
35	1	9	18	20	11	10	17	8	13	26	
	2	12	18	18	9	8	16	7	11	26	
	3	18	16	17	7	8	16	7	9	26	
	4	23	16	15	6	6	16	7	7	26	
	5	25	14	13	5	2	16	7	7	26	
	6	27	14	12	2	2	16	7	5	26	
36	1	7	19	6	15	9	21	30	27	13	
	2	11	19	5	13	8	21	26	27	13	
	3	15	19	3	11	8	21	25	25	13	
	4	19	19	3	10	8	21	21	24	13	
	5	20	19	2	7	8	21	21	23	13	
	6	29	19	1	7	8	21	17	23	13	
37	1	1	18	20	19	21	21	24	27	26	
	2	5	18	18	16	18	17	23	21	19	
	3	8	17	15	14	18	13	21	21	19	
	4	10	15	14	11	16	10	17	14	16	
	5	15	15	12	8	14	8	15	14	10	
	6	25	14	9	6	11	6	13	10	8	
38	1	1	14	17	24	8	29	19	21	30	
	2	4	12	17	23	7	26	15	19	28	
	3	5	12	16	19	5	23	14	14	26	
	4	8	10	14	17	5	22	12	13	23	
	5	9	9	13	17	3	20	11	9	22	
	6	11	8	12	13	3	17	8	8	21	
39	1	6	23	8	8	12	28	22	9	18	
	2	7	22	7	8	9	28	20	8	14	
	3	9	21	7	8	8	26	19	7	13	
	4	11	18	7	7	6	26	19	6	13	
	5	22	16	6	7	4	25	18	4	9	
	6	25	15	6	6	2	24	17	4	8	
40	1	12	18	5	20	18	17	24	24	22	
	2	13	14	3	17	17	14	23	22	22	
	3	21	13	3	16	15	13	22	22	22	
	4	22	10	3	14	14	12	20	20	22	
	5	23	8	2	14	13	11	17	19	22	
	6	27	5	1	12	12	11	17	16	22	
41	1	4	18	12	14	14	28	23	26	10	
	2	6	14	11	13	12	22	22	20	8	
	3	12	12	11	12	9	18	21	20	5	
	4	18	10	11	11	8	14	21	15	5	
	5	23	8	11	10	6	10	20	11	2	
	6	30	8	11	9	3	8	19	7	1	
42	1	14	21	22	14	14	23	29	16	20	
	2	15	17	21	14	12	22	28	16	19	
	3	17	16	21	11	10	17	27	14	19	
	4	20	13	20	8	10	14	26	13	19	
	5	29	8	18	6	7	14	26	10	18	
	6	30	5	16	5	7	11	25	9	18	
43	1	4	26	20	22	12	23	24	28	16	
	2	6	24	18	19	11	22	24	28	12	
	3	7	22	18	18	10	21	20	28	10	
	4	8	18	16	14	8	21	19	28	9	
	5	17	17	14	13	7	20	14	27	7	
	6	28	16	13	11	7	20	13	27	5	
44	1	2	23	20	25	7	23	11	17	26	
	2	8	17	15	24	6	22	10	14	23	
	3	16	17	12	23	5	22	10	14	19	
	4	17	11	8	21	3	21	10	12	17	
	5	22	9	6	21	3	21	9	9	13	
	6	27	8	3	20	2	20	9	9	12	
45	1	5	19	25	5	26	25	15	27	22	
	2	10	19	22	4	21	22	14	24	21	
	3	21	17	18	4	20	21	12	20	21	
	4	22	15	11	4	17	21	9	15	21	
	5	24	15	8	4	11	19	7	12	21	
	6	25	13	4	4	8	18	4	7	21	
46	1	4	16	16	24	1	30	30	16	28	
	2	6	16	16	24	1	24	29	13	25	
	3	17	16	15	24	1	22	28	12	23	
	4	25	15	13	24	1	16	27	12	20	
	5	26	14	12	23	1	16	26	10	20	
	6	27	14	11	23	1	10	25	8	18	
47	1	6	21	18	16	21	25	15	11	19	
	2	8	21	15	12	19	21	14	9	18	
	3	9	20	14	11	18	17	13	9	18	
	4	12	20	14	8	13	15	13	8	15	
	5	20	19	12	5	10	9	13	7	15	
	6	27	19	10	4	8	4	12	6	14	
48	1	15	17	16	21	17	10	20	11	16	
	2	16	17	15	18	16	9	17	8	15	
	3	17	16	14	15	14	9	15	8	15	
	4	23	15	13	12	10	8	10	7	15	
	5	25	14	11	8	10	8	8	5	14	
	6	28	12	11	6	8	7	4	5	14	
49	1	5	9	21	14	10	20	11	14	24	
	2	12	8	20	12	10	17	9	12	21	
	3	13	7	19	10	10	13	8	9	18	
	4	14	7	19	8	10	13	7	6	13	
	5	15	6	17	8	10	10	6	5	8	
	6	21	5	17	6	10	6	5	2	7	
50	1	1	5	24	14	8	22	18	23	21	
	2	3	4	23	12	7	19	15	20	18	
	3	7	4	21	11	6	15	14	20	13	
	4	12	3	20	10	4	13	13	17	13	
	5	14	3	19	9	3	11	10	17	8	
	6	23	3	18	6	3	9	10	15	4	
51	1	1	9	14	14	9	17	9	22	16	
	2	2	7	11	11	8	16	9	22	15	
	3	3	7	8	11	6	14	8	22	15	
	4	4	6	5	10	4	13	8	21	15	
	5	19	6	5	8	3	12	6	20	15	
	6	20	5	2	7	2	11	6	20	15	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	86	100	91	103	892	796	757	801

************************************************************************
