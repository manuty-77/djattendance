jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 4 9 
2	6	4		15 10 8 6 
3	6	4		15 12 11 5 
4	6	3		18 10 7 
5	6	7		23 22 20 19 18 16 13 
6	6	6		23 20 18 16 14 11 
7	6	6		23 22 20 19 16 13 
8	6	6		25 23 22 16 14 13 
9	6	5		25 23 22 19 13 
10	6	4		22 19 16 13 
11	6	4		31 28 22 19 
12	6	3		28 25 17 
13	6	2		28 17 
14	6	3		31 28 21 
15	6	2		28 19 
16	6	4		32 31 28 24 
17	6	2		31 21 
18	6	2		25 21 
19	6	1		21 
20	6	1		21 
21	6	2		32 24 
22	6	3		34 32 26 
23	6	5		36 34 31 30 27 
24	6	2		34 26 
25	6	4		36 32 30 27 
26	6	3		36 30 27 
27	6	2		33 29 
28	6	1		29 
29	6	5		47 41 40 39 35 
30	6	6		47 45 41 40 38 37 
31	6	6		47 43 40 39 38 37 
32	6	5		47 40 39 38 37 
33	6	4		47 41 39 37 
34	6	3		40 39 37 
35	6	3		43 38 37 
36	6	5		51 50 49 45 44 
37	6	3		50 49 42 
38	6	4		51 50 49 46 
39	6	3		51 50 45 
40	6	3		51 50 46 
41	6	2		46 43 
42	6	1		44 
43	6	2		49 48 
44	6	1		46 
45	6	1		46 
46	6	1		48 
47	6	1		49 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	16	7	19	25	8	18	22	
	2	17	7	15	20	7	14	22	
	3	23	7	15	18	6	14	22	
	4	27	6	12	11	6	11	22	
	5	28	5	10	11	5	6	21	
	6	29	5	9	5	5	3	21	
3	1	3	17	25	4	26	3	15	
	2	4	15	23	4	25	2	13	
	3	7	14	18	4	25	2	12	
	4	8	14	17	4	24	2	12	
	5	17	13	14	4	24	1	11	
	6	27	12	10	4	23	1	10	
4	1	5	23	23	22	4	4	19	
	2	14	21	19	21	3	3	17	
	3	21	20	19	20	3	3	17	
	4	24	17	17	18	2	2	15	
	5	27	16	15	17	2	1	15	
	6	30	14	13	14	2	1	14	
5	1	13	27	27	25	27	23	23	
	2	14	26	22	22	24	23	23	
	3	19	26	20	16	19	23	23	
	4	20	24	17	16	14	23	22	
	5	21	23	11	10	8	23	22	
	6	22	22	7	7	2	23	22	
6	1	1	30	28	7	12	18	21	
	2	6	29	27	6	11	17	20	
	3	10	27	26	6	10	16	19	
	4	19	27	26	5	10	14	18	
	5	29	26	26	5	10	14	15	
	6	30	25	25	5	9	13	14	
7	1	1	24	26	26	27	17	18	
	2	6	19	22	23	27	14	17	
	3	7	16	21	22	27	10	16	
	4	13	15	15	19	26	9	16	
	5	17	11	11	15	26	7	16	
	6	18	6	9	13	26	5	15	
8	1	5	20	30	24	18	28	28	
	2	12	20	30	19	18	24	21	
	3	14	20	30	16	18	20	18	
	4	26	19	30	14	17	17	12	
	5	27	19	30	13	17	14	9	
	6	28	19	30	10	17	11	3	
9	1	10	29	24	26	29	28	12	
	2	16	27	20	24	23	26	11	
	3	19	25	15	23	15	23	10	
	4	22	21	14	22	13	21	9	
	5	27	19	10	19	10	20	8	
	6	28	18	7	18	3	17	6	
10	1	4	6	25	26	21	18	10	
	2	9	5	24	24	18	18	9	
	3	10	5	24	24	17	12	9	
	4	11	4	22	22	14	9	8	
	5	18	4	22	19	10	8	8	
	6	21	3	21	19	7	4	7	
11	1	5	27	23	22	20	20	28	
	2	6	25	21	20	19	20	27	
	3	8	20	18	20	18	18	26	
	4	12	18	17	19	18	17	23	
	5	14	12	11	19	17	16	23	
	6	28	10	9	18	17	14	21	
12	1	3	29	22	25	29	23	17	
	2	5	26	20	22	23	19	16	
	3	10	26	18	19	22	16	16	
	4	16	22	16	15	18	12	16	
	5	17	21	15	9	11	6	14	
	6	23	20	14	8	11	2	14	
13	1	2	24	17	14	22	29	18	
	2	6	20	15	12	18	27	17	
	3	13	17	14	10	16	27	15	
	4	16	13	13	9	14	26	13	
	5	27	13	12	6	12	25	10	
	6	29	8	11	4	12	24	9	
14	1	6	16	27	11	29	19	19	
	2	9	14	24	9	26	18	18	
	3	16	12	24	9	23	16	18	
	4	24	11	21	7	20	16	18	
	5	26	9	18	5	17	15	18	
	6	27	8	16	3	16	14	18	
15	1	1	21	24	25	14	2	9	
	2	2	19	22	25	14	2	9	
	3	11	17	22	25	12	2	9	
	4	19	15	20	25	11	2	8	
	5	24	13	20	25	10	2	8	
	6	28	13	19	25	10	2	7	
16	1	2	29	10	20	7	10	21	
	2	3	29	10	20	6	9	20	
	3	18	28	9	20	6	7	16	
	4	27	27	8	19	6	7	15	
	5	28	25	6	19	6	5	13	
	6	29	24	5	19	6	5	12	
17	1	11	28	28	23	15	28	3	
	2	24	23	24	19	13	24	2	
	3	25	22	22	18	13	24	2	
	4	27	18	20	16	11	22	2	
	5	28	16	18	12	10	20	2	
	6	29	12	16	11	9	19	2	
18	1	8	20	12	26	21	26	23	
	2	16	19	12	22	18	25	23	
	3	17	19	11	22	18	24	21	
	4	21	18	11	19	15	22	19	
	5	25	18	11	15	15	22	17	
	6	30	18	10	11	13	21	15	
19	1	1	25	16	27	12	5	22	
	2	3	22	16	22	11	5	20	
	3	4	18	12	19	11	4	20	
	4	19	13	8	15	11	4	20	
	5	21	11	6	13	9	2	18	
	6	26	8	5	10	9	2	18	
20	1	1	5	16	26	26	23	25	
	2	2	4	14	24	24	20	25	
	3	4	4	12	24	22	19	25	
	4	16	2	12	23	20	19	24	
	5	18	1	9	22	20	18	24	
	6	19	1	7	21	18	16	24	
21	1	11	5	11	13	18	27	21	
	2	12	4	10	11	15	27	18	
	3	17	4	8	9	13	25	17	
	4	19	3	7	6	11	24	16	
	5	28	2	7	4	8	24	16	
	6	30	2	6	3	4	23	14	
22	1	9	16	23	22	25	19	4	
	2	12	13	20	22	22	13	4	
	3	16	12	18	18	21	12	4	
	4	23	9	15	17	20	11	4	
	5	25	7	14	15	19	7	4	
	6	26	1	10	13	19	5	4	
23	1	3	15	19	29	24	16	26	
	2	6	14	17	29	22	12	21	
	3	16	13	11	29	18	9	18	
	4	18	11	11	29	16	7	15	
	5	20	10	5	29	12	5	9	
	6	28	9	4	29	9	1	8	
24	1	3	25	20	30	12	27	9	
	2	7	23	17	28	12	27	8	
	3	8	18	16	27	10	26	8	
	4	11	16	14	26	7	24	6	
	5	23	15	12	24	3	24	5	
	6	30	12	12	22	1	23	3	
25	1	3	10	5	17	28	19	20	
	2	5	9	4	13	28	18	19	
	3	12	9	4	10	28	17	18	
	4	14	9	3	9	28	13	18	
	5	27	8	3	3	28	13	17	
	6	29	8	2	1	28	10	15	
26	1	3	27	17	10	20	28	9	
	2	6	22	17	9	19	23	9	
	3	12	19	16	8	18	17	9	
	4	13	19	16	8	18	16	8	
	5	22	13	14	7	16	9	8	
	6	27	10	14	6	15	5	8	
27	1	7	17	8	28	27	8	16	
	2	8	17	6	21	20	8	16	
	3	18	17	5	15	19	8	16	
	4	21	17	5	12	13	8	16	
	5	22	17	4	8	12	8	16	
	6	25	17	2	3	5	8	16	
28	1	2	25	19	11	13	20	19	
	2	9	23	16	11	13	17	16	
	3	19	21	13	10	13	15	15	
	4	22	19	11	8	13	12	11	
	5	23	18	8	7	13	8	9	
	6	25	18	7	7	13	4	4	
29	1	2	11	10	13	4	19	23	
	2	11	11	9	9	3	18	19	
	3	12	11	8	8	3	18	16	
	4	14	10	8	6	3	18	11	
	5	24	10	8	4	2	18	7	
	6	27	10	7	3	2	18	1	
30	1	11	11	22	22	15	14	29	
	2	19	9	20	22	12	13	24	
	3	20	9	18	22	11	12	18	
	4	23	9	16	22	9	12	14	
	5	26	8	14	22	6	10	11	
	6	28	7	13	22	4	10	9	
31	1	1	19	14	23	23	5	24	
	2	4	15	13	21	20	5	20	
	3	5	12	13	19	19	5	20	
	4	11	12	13	17	16	5	16	
	5	13	10	12	15	13	4	12	
	6	20	7	12	13	13	4	4	
32	1	7	18	27	23	20	17	24	
	2	13	16	24	21	18	16	21	
	3	14	12	23	21	16	16	18	
	4	19	10	19	20	15	16	15	
	5	29	9	18	20	14	16	13	
	6	30	4	17	19	13	16	7	
33	1	1	4	26	24	25	18	22	
	2	6	4	22	22	21	17	19	
	3	7	4	19	20	18	14	19	
	4	8	4	18	20	10	11	17	
	5	14	3	13	16	10	8	16	
	6	23	3	8	15	5	7	14	
34	1	4	24	7	27	18	15	16	
	2	10	24	5	26	15	15	15	
	3	12	22	5	25	10	15	15	
	4	16	20	3	23	9	15	14	
	5	21	20	3	21	7	15	14	
	6	22	18	2	17	4	15	14	
35	1	16	27	19	22	25	25	22	
	2	17	27	14	21	21	21	20	
	3	18	26	12	21	19	17	18	
	4	19	26	12	20	15	17	14	
	5	26	24	7	19	12	14	14	
	6	29	24	5	19	10	10	12	
36	1	16	13	20	11	29	28	19	
	2	18	12	19	9	27	27	18	
	3	22	9	17	8	26	25	18	
	4	23	8	15	7	23	24	18	
	5	26	6	13	6	22	22	18	
	6	27	6	10	4	21	22	18	
37	1	2	26	29	25	2	15	28	
	2	7	21	29	24	2	13	26	
	3	13	20	29	24	2	11	25	
	4	20	15	28	24	2	10	23	
	5	26	14	28	24	1	9	22	
	6	27	9	28	24	1	7	21	
38	1	14	7	20	25	13	14	12	
	2	15	7	19	25	13	12	8	
	3	16	6	18	25	10	10	8	
	4	20	4	17	25	10	7	6	
	5	24	3	15	25	7	5	3	
	6	30	3	15	25	6	4	3	
39	1	9	21	14	22	17	23	15	
	2	12	21	13	20	14	21	14	
	3	13	19	13	19	13	19	14	
	4	19	19	11	18	9	15	13	
	5	24	18	10	16	9	12	13	
	6	29	17	10	13	7	8	12	
40	1	3	29	20	23	17	29	23	
	2	5	29	19	22	17	28	20	
	3	12	28	14	22	17	27	18	
	4	15	27	14	21	16	25	18	
	5	21	26	8	21	16	24	16	
	6	28	25	8	20	16	23	15	
41	1	15	27	25	20	20	18	24	
	2	17	26	21	20	17	18	18	
	3	22	24	18	19	14	15	14	
	4	23	24	14	18	13	11	12	
	5	26	22	11	16	12	10	9	
	6	29	22	9	15	7	7	4	
42	1	1	29	28	20	22	23	10	
	2	5	25	26	20	19	20	9	
	3	6	22	24	20	18	18	8	
	4	10	17	21	20	16	16	8	
	5	11	14	21	20	13	11	7	
	6	14	12	17	20	13	10	7	
43	1	2	7	29	21	7	25	18	
	2	3	6	24	17	7	25	14	
	3	4	6	22	14	7	25	11	
	4	5	5	19	9	6	25	8	
	5	11	5	17	5	5	25	4	
	6	16	4	12	5	5	25	4	
44	1	4	28	21	21	27	19	27	
	2	6	27	20	19	23	15	24	
	3	9	24	19	19	21	14	21	
	4	10	23	19	19	17	11	20	
	5	20	20	18	18	17	10	16	
	6	21	19	18	17	12	9	14	
45	1	1	22	27	26	19	24	23	
	2	4	22	25	26	19	24	22	
	3	6	22	24	25	19	24	21	
	4	14	22	22	25	19	23	21	
	5	26	21	21	24	19	22	20	
	6	28	21	19	23	19	22	20	
46	1	1	14	15	20	14	4	21	
	2	13	11	14	20	13	4	20	
	3	14	8	10	17	12	4	20	
	4	15	5	8	15	12	4	19	
	5	16	4	6	12	10	3	18	
	6	29	1	4	12	9	3	17	
47	1	2	16	29	25	12	10	3	
	2	3	14	24	24	11	9	2	
	3	10	12	22	23	11	8	2	
	4	15	11	19	23	10	7	2	
	5	17	10	16	22	9	5	2	
	6	24	9	13	21	9	4	2	
48	1	1	28	12	5	28	20	15	
	2	2	26	11	3	28	17	15	
	3	3	25	9	3	27	15	15	
	4	24	22	6	3	26	14	15	
	5	28	21	5	2	24	9	15	
	6	30	20	3	1	23	5	15	
49	1	1	28	10	24	25	25	11	
	2	2	28	10	18	19	25	11	
	3	6	28	9	15	16	25	10	
	4	7	27	9	14	14	25	9	
	5	21	27	8	9	10	25	6	
	6	23	27	7	6	3	25	5	
50	1	2	24	24	25	27	29	15	
	2	5	23	23	24	21	26	13	
	3	10	23	23	22	19	22	12	
	4	27	22	22	17	13	21	10	
	5	28	20	22	14	12	19	10	
	6	29	20	21	12	6	16	8	
51	1	7	16	5	16	27	15	22	
	2	8	14	5	14	26	13	16	
	3	13	13	5	13	25	12	13	
	4	23	10	5	13	24	10	10	
	5	27	7	5	12	23	9	7	
	6	28	7	5	11	22	8	5	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	81	78	84	77	843	831

************************************************************************
