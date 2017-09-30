jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 4 5 7 
2	9	3		15 6 3 
3	9	4		13 11 9 8 
4	9	5		19 15 14 12 10 
5	9	4		19 15 14 12 
6	9	3		19 12 11 
7	9	3		15 14 12 
8	9	4		20 19 18 17 
9	9	4		22 19 18 16 
10	9	2		20 13 
11	9	2		17 14 
12	9	1		13 
13	9	3		23 18 17 
14	9	3		26 20 18 
15	9	3		23 22 18 
16	9	2		23 17 
17	9	5		36 26 25 24 21 
18	9	4		36 25 24 21 
19	9	6		31 30 28 25 24 23 
20	9	4		28 27 24 22 
21	9	5		31 30 29 28 27 
22	9	5		37 36 35 33 30 
23	9	2		32 26 
24	9	5		43 40 34 33 32 
25	9	5		43 40 37 34 32 
26	9	1		27 
27	9	5		45 43 40 35 34 
28	9	4		43 40 34 33 
29	9	6		49 45 41 40 37 35 
30	9	7		51 45 43 41 40 39 38 
31	9	1		32 
32	9	5		49 45 41 38 35 
33	9	6		51 49 45 41 39 38 
34	9	5		51 49 41 39 38 
35	9	4		51 44 42 39 
36	9	5		49 48 47 45 44 
37	9	1		38 
38	9	3		48 44 42 
39	9	4		50 48 47 46 
40	9	2		44 42 
41	9	3		48 47 46 
42	9	2		47 46 
43	9	2		49 46 
44	9	1		46 
45	9	1		46 
46	9	1		52 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	1	19	27	16	23	23	4	
	2	5	18	26	14	23	21	3	
	3	9	18	26	13	23	21	3	
	4	11	17	26	12	23	20	3	
	5	20	17	26	12	23	19	2	
	6	21	16	26	11	23	18	2	
	7	23	16	26	10	23	16	2	
	8	25	15	26	10	23	16	2	
	9	28	15	26	9	23	15	2	
3	1	1	6	25	25	29	6	12	
	2	4	6	23	23	27	6	12	
	3	8	6	21	20	25	5	11	
	4	12	6	18	19	23	5	10	
	5	15	6	18	17	22	4	9	
	6	21	6	16	14	19	3	8	
	7	23	6	14	12	17	3	7	
	8	24	6	11	9	17	3	5	
	9	30	6	11	7	15	2	5	
4	1	2	5	23	28	27	28	8	
	2	4	5	23	27	27	27	8	
	3	6	5	21	24	26	27	8	
	4	13	5	19	23	26	27	8	
	5	14	5	18	20	25	26	8	
	6	17	5	16	20	25	25	8	
	7	21	5	15	18	24	25	8	
	8	22	5	12	15	23	24	8	
	9	26	5	12	14	23	23	8	
5	1	1	28	14	7	8	15	27	
	2	2	25	12	6	7	15	26	
	3	3	23	12	6	6	15	24	
	4	6	22	11	6	6	15	23	
	5	8	19	10	6	6	15	23	
	6	10	16	8	5	5	15	20	
	7	17	14	7	5	5	15	19	
	8	22	12	6	5	4	15	18	
	9	23	10	5	5	4	15	18	
6	1	3	25	24	10	20	16	14	
	2	8	22	23	9	20	14	13	
	3	12	21	23	9	20	11	12	
	4	15	18	21	7	20	10	10	
	5	16	16	21	5	19	10	10	
	6	17	16	19	5	19	8	9	
	7	18	13	18	4	18	5	8	
	8	19	12	18	3	18	4	7	
	9	21	10	17	2	18	4	6	
7	1	5	7	27	24	25	23	24	
	2	7	6	23	21	22	22	21	
	3	8	5	23	18	22	19	20	
	4	14	5	21	16	20	19	16	
	5	16	5	19	16	18	17	15	
	6	25	4	19	13	17	15	13	
	7	26	4	16	12	14	15	12	
	8	27	3	16	8	12	13	9	
	9	28	3	13	7	10	11	8	
8	1	2	27	29	7	23	10	26	
	2	9	25	27	6	21	10	24	
	3	12	23	26	6	17	9	23	
	4	13	23	26	6	15	8	23	
	5	20	21	24	6	12	8	22	
	6	23	20	24	6	9	7	21	
	7	24	20	23	6	7	7	21	
	8	25	18	21	6	5	7	19	
	9	27	17	21	6	4	6	19	
9	1	1	11	25	22	25	14	26	
	2	7	11	24	22	20	12	24	
	3	10	10	24	21	18	12	22	
	4	11	8	23	20	17	12	18	
	5	18	7	22	20	13	11	17	
	6	22	6	22	19	12	11	14	
	7	23	6	22	19	7	10	12	
	8	26	5	21	18	3	9	6	
	9	29	3	21	17	3	9	6	
10	1	5	21	21	21	30	14	23	
	2	6	19	21	19	27	13	21	
	3	7	17	20	18	24	12	20	
	4	9	16	19	16	22	12	17	
	5	15	16	19	13	20	11	16	
	6	20	15	18	13	16	10	15	
	7	21	13	17	10	16	9	11	
	8	22	12	16	7	11	8	11	
	9	29	11	16	5	10	8	7	
11	1	2	19	21	28	18	26	24	
	2	3	19	20	24	18	25	23	
	3	10	19	18	24	16	23	23	
	4	12	19	13	20	14	22	22	
	5	13	19	12	16	10	21	20	
	6	15	19	9	15	10	19	19	
	7	16	19	7	13	8	19	18	
	8	29	19	5	8	4	16	18	
	9	30	19	3	5	3	15	17	
12	1	11	25	24	20	20	30	18	
	2	12	21	23	17	20	29	16	
	3	13	18	22	15	20	29	16	
	4	14	17	21	13	19	29	15	
	5	15	16	21	11	19	28	13	
	6	16	13	19	9	18	28	12	
	7	17	9	18	5	18	28	11	
	8	19	8	17	4	17	28	11	
	9	27	5	17	3	17	28	9	
13	1	5	14	12	25	26	23	10	
	2	9	14	12	24	22	22	8	
	3	11	14	11	23	20	22	7	
	4	14	14	11	23	18	20	7	
	5	17	14	10	20	16	18	6	
	6	19	14	9	19	10	18	4	
	7	24	14	9	18	8	15	4	
	8	27	14	8	18	5	14	3	
	9	30	14	8	16	2	13	2	
14	1	1	24	25	26	10	26	15	
	2	2	18	25	25	8	26	14	
	3	5	16	23	22	7	25	14	
	4	7	16	23	19	7	23	13	
	5	8	13	22	17	6	21	13	
	6	9	8	19	16	6	20	12	
	7	19	6	18	13	4	19	11	
	8	22	5	17	11	4	18	11	
	9	25	1	17	9	3	17	11	
15	1	6	13	15	26	10	23	28	
	2	7	11	15	26	10	21	24	
	3	8	11	12	26	10	20	21	
	4	9	9	11	26	10	17	20	
	5	10	9	8	26	10	16	19	
	6	15	7	6	26	10	15	16	
	7	21	6	6	26	10	13	15	
	8	27	6	2	26	10	12	12	
	9	28	5	1	26	10	12	11	
16	1	1	13	15	26	17	13	18	
	2	5	11	13	24	16	13	17	
	3	7	10	12	21	16	11	15	
	4	8	8	11	19	14	10	15	
	5	14	8	10	16	14	9	13	
	6	18	7	8	16	13	8	12	
	7	20	4	6	13	12	7	11	
	8	21	4	4	12	12	6	10	
	9	29	2	3	8	11	6	9	
17	1	5	24	21	14	15	23	11	
	2	9	24	20	14	13	20	11	
	3	14	24	18	14	13	20	10	
	4	15	24	17	14	11	18	8	
	5	18	24	16	14	11	15	7	
	6	20	24	14	14	10	13	6	
	7	25	24	13	14	10	12	6	
	8	27	24	12	14	8	9	4	
	9	29	24	12	14	8	6	4	
18	1	3	28	29	29	26	29	5	
	2	9	23	29	29	26	29	5	
	3	10	22	29	29	26	29	5	
	4	11	20	29	29	26	29	5	
	5	12	17	28	29	26	28	4	
	6	15	16	28	29	26	28	4	
	7	26	14	28	29	26	28	3	
	8	27	12	28	29	26	27	3	
	9	30	10	28	29	26	27	3	
19	1	1	20	20	17	26	25	14	
	2	4	19	18	15	25	25	14	
	3	14	16	18	14	23	25	13	
	4	16	16	17	13	21	25	10	
	5	19	13	16	13	20	25	9	
	6	24	13	15	11	15	25	9	
	7	27	11	13	10	14	25	7	
	8	28	10	13	10	13	25	5	
	9	30	7	12	9	11	25	5	
20	1	2	5	23	19	20	17	24	
	2	9	5	23	19	20	17	23	
	3	10	5	21	17	20	17	24	
	4	12	5	20	16	20	17	24	
	5	13	5	20	14	20	17	23	
	6	17	5	18	12	20	16	23	
	7	20	5	17	10	20	16	22	
	8	23	5	16	8	20	16	22	
	9	26	5	14	7	20	16	22	
21	1	4	25	24	25	30	16	16	
	2	5	25	23	24	30	14	15	
	3	9	25	23	22	30	14	14	
	4	12	24	23	19	30	13	13	
	5	13	24	22	18	30	12	10	
	6	14	24	22	16	30	12	9	
	7	18	23	22	15	30	12	8	
	8	19	23	22	13	30	11	8	
	9	28	23	22	12	30	10	7	
22	1	9	27	16	26	16	22	28	
	2	10	27	14	24	16	22	24	
	3	11	25	12	23	16	22	24	
	4	20	25	11	19	16	22	19	
	5	22	23	9	14	16	22	17	
	6	23	23	6	12	15	22	17	
	7	27	22	4	11	15	22	12	
	8	29	21	4	7	15	22	12	
	9	30	20	2	5	15	22	8	
23	1	4	25	29	12	20	9	20	
	2	5	21	29	11	20	8	15	
	3	10	20	29	11	20	8	13	
	4	11	18	29	10	20	8	13	
	5	15	15	29	9	20	8	11	
	6	18	12	29	7	20	8	8	
	7	19	10	29	6	20	8	7	
	8	20	8	29	5	20	8	4	
	9	22	6	29	5	20	8	1	
24	1	3	18	25	25	27	27	23	
	2	5	16	23	25	27	25	21	
	3	6	15	22	24	25	25	19	
	4	11	14	19	22	25	24	16	
	5	12	11	19	22	24	23	11	
	6	16	11	18	20	22	23	11	
	7	17	9	15	20	22	21	6	
	8	19	8	13	19	21	20	4	
	9	26	6	12	18	20	20	4	
25	1	6	16	8	26	14	29	14	
	2	8	14	8	25	14	24	11	
	3	11	14	8	25	14	22	10	
	4	12	10	8	25	14	22	10	
	5	21	9	8	24	14	19	8	
	6	23	9	7	24	14	15	7	
	7	24	7	7	24	14	14	4	
	8	25	4	7	24	14	13	2	
	9	27	3	7	24	14	10	1	
26	1	1	25	28	19	19	17	22	
	2	3	21	28	18	18	14	21	
	3	4	18	24	15	16	13	20	
	4	8	17	22	12	14	12	20	
	5	11	14	22	10	12	9	19	
	6	12	12	21	8	11	7	18	
	7	16	10	17	5	11	6	17	
	8	24	8	17	4	9	5	17	
	9	27	5	15	3	7	2	16	
27	1	13	19	12	17	17	11	30	
	2	14	18	11	17	17	10	29	
	3	15	18	11	15	16	10	29	
	4	18	17	11	14	15	8	29	
	5	19	15	10	13	13	6	29	
	6	22	14	10	10	13	5	29	
	7	24	13	10	9	12	5	29	
	8	25	12	10	8	10	2	29	
	9	26	12	10	6	9	2	29	
28	1	1	22	26	16	24	19	6	
	2	4	21	26	16	24	19	5	
	3	5	20	26	14	18	18	5	
	4	6	20	26	13	15	17	5	
	5	7	19	26	12	15	15	4	
	6	22	17	26	12	11	15	4	
	7	23	16	26	11	6	13	4	
	8	26	16	26	10	6	12	3	
	9	30	15	26	9	1	12	3	
29	1	1	15	27	25	26	10	15	
	2	12	15	25	25	25	9	15	
	3	13	15	21	23	24	9	15	
	4	17	15	20	20	24	7	15	
	5	18	15	16	17	22	6	15	
	6	19	15	11	13	22	5	15	
	7	27	15	11	12	22	4	15	
	8	28	15	8	8	20	4	15	
	9	29	15	5	6	20	3	15	
30	1	3	18	29	21	21	16	24	
	2	6	17	26	18	20	16	21	
	3	7	17	24	17	18	15	17	
	4	8	16	23	14	17	15	16	
	5	12	16	20	13	17	13	14	
	6	14	16	19	11	16	13	11	
	7	19	16	19	10	15	12	9	
	8	24	15	15	8	14	12	6	
	9	25	15	14	7	14	11	6	
31	1	4	25	12	2	5	28	22	
	2	9	19	12	2	5	28	22	
	3	10	19	12	2	5	28	21	
	4	13	14	12	2	5	28	22	
	5	14	14	12	2	5	28	21	
	6	15	12	11	2	5	28	20	
	7	21	7	11	2	5	28	20	
	8	22	7	11	2	5	28	19	
	9	30	3	11	2	5	28	19	
32	1	9	27	20	21	27	19	24	
	2	12	27	19	21	23	16	22	
	3	14	23	19	21	22	15	18	
	4	17	21	19	21	18	14	17	
	5	18	20	18	21	17	11	13	
	6	20	18	18	20	14	11	10	
	7	21	17	17	20	13	10	9	
	8	23	14	16	20	10	7	7	
	9	27	14	16	20	8	7	3	
33	1	5	25	26	23	24	15	17	
	2	10	24	26	22	22	14	17	
	3	11	23	26	22	22	12	17	
	4	12	19	25	22	21	11	17	
	5	13	19	25	22	20	10	17	
	6	21	16	25	22	18	9	17	
	7	22	15	25	22	17	9	17	
	8	23	13	24	22	16	8	17	
	9	24	12	24	22	16	7	17	
34	1	5	18	27	20	27	10	13	
	2	12	18	27	19	21	10	12	
	3	13	16	25	17	19	8	11	
	4	17	15	23	16	19	8	10	
	5	19	14	22	16	14	6	7	
	6	23	14	22	15	11	6	6	
	7	25	12	21	14	9	5	5	
	8	26	11	18	14	6	3	4	
	9	27	11	18	13	5	2	2	
35	1	5	21	23	13	25	28	28	
	2	7	18	21	12	25	27	27	
	3	10	17	21	12	25	23	26	
	4	14	13	19	12	25	23	24	
	5	15	11	18	12	24	19	22	
	6	18	10	18	12	24	17	21	
	7	22	8	16	12	24	16	20	
	8	23	5	15	12	24	13	18	
	9	24	5	15	12	24	12	17	
36	1	2	27	17	23	17	14	20	
	2	3	25	15	22	16	13	19	
	3	6	24	13	22	16	11	18	
	4	11	22	12	21	16	11	18	
	5	13	21	8	21	15	10	17	
	6	17	18	7	20	15	8	16	
	7	26	17	6	19	14	6	15	
	8	27	15	4	19	14	4	14	
	9	28	15	3	19	14	3	14	
37	1	4	18	13	28	12	24	8	
	2	6	15	11	27	12	21	7	
	3	7	15	11	27	12	17	7	
	4	8	12	9	25	12	15	6	
	5	10	11	7	25	12	14	6	
	6	11	9	6	25	12	10	5	
	7	22	7	5	23	12	9	5	
	8	23	7	4	22	12	4	4	
	9	24	6	4	22	12	1	3	
38	1	4	16	9	15	16	29	21	
	2	5	14	9	15	15	28	20	
	3	17	13	7	14	14	28	20	
	4	19	13	6	14	12	27	20	
	5	22	11	6	13	12	27	19	
	6	23	11	6	13	10	26	19	
	7	27	9	5	12	9	26	18	
	8	28	8	3	12	8	25	18	
	9	30	7	3	12	8	25	18	
39	1	2	11	6	14	28	20	23	
	2	3	11	5	14	27	18	23	
	3	4	11	5	14	25	17	23	
	4	7	10	5	14	25	15	23	
	5	8	10	5	14	24	13	23	
	6	11	10	4	14	22	12	22	
	7	16	10	4	14	22	9	22	
	8	21	9	4	14	20	7	22	
	9	28	9	4	14	19	6	22	
40	1	1	22	6	27	13	26	3	
	2	3	22	5	26	12	24	3	
	3	8	17	5	24	12	23	3	
	4	10	17	4	24	11	23	2	
	5	14	12	4	22	11	21	2	
	6	15	10	3	22	10	20	2	
	7	21	7	3	20	10	20	2	
	8	22	5	2	20	9	18	1	
	9	28	3	2	19	9	18	1	
41	1	7	19	16	27	9	29	25	
	2	8	18	14	26	7	27	24	
	3	9	17	12	26	7	21	24	
	4	10	16	11	25	6	18	23	
	5	16	14	10	25	6	15	23	
	6	19	14	9	24	5	12	23	
	7	20	13	6	24	4	9	22	
	8	23	12	6	24	4	9	22	
	9	28	11	4	23	3	3	22	
42	1	1	11	9	24	24	21	26	
	2	6	10	9	23	22	20	23	
	3	7	9	8	19	19	20	23	
	4	9	8	8	18	16	18	20	
	5	15	8	7	15	15	18	20	
	6	17	7	7	11	11	17	18	
	7	22	6	6	8	10	16	15	
	8	23	6	5	8	7	14	15	
	9	25	5	5	6	5	14	14	
43	1	2	27	18	26	4	27	18	
	2	4	25	15	25	4	22	16	
	3	5	22	15	24	4	21	13	
	4	9	21	13	23	4	20	11	
	5	10	18	12	22	3	16	9	
	6	12	16	12	21	3	12	9	
	7	13	16	10	19	3	12	6	
	8	14	14	10	18	2	9	3	
	9	20	10	8	18	2	7	2	
44	1	1	19	4	5	25	22	16	
	2	2	17	3	5	22	20	15	
	3	11	17	3	5	18	17	14	
	4	12	17	3	5	17	17	13	
	5	14	16	3	5	15	14	13	
	6	15	15	2	4	12	12	12	
	7	18	15	2	4	10	11	12	
	8	22	14	2	4	8	9	11	
	9	26	14	2	4	5	7	11	
45	1	1	25	30	27	28	15	29	
	2	2	24	29	26	28	15	27	
	3	4	24	29	21	27	15	26	
	4	14	24	29	17	25	15	22	
	5	21	24	28	16	24	15	21	
	6	23	24	28	10	24	14	18	
	7	25	24	28	10	22	14	16	
	8	29	24	28	7	21	14	15	
	9	30	24	28	3	20	14	13	
46	1	2	29	27	10	9	19	20	
	2	7	28	27	9	8	19	18	
	3	8	25	26	7	8	19	18	
	4	14	24	26	7	8	18	17	
	5	16	24	25	6	8	18	16	
	6	21	21	25	5	8	18	16	
	7	22	19	24	4	8	17	15	
	8	25	19	24	3	8	17	14	
	9	29	18	24	2	8	17	14	
47	1	11	18	25	26	25	8	27	
	2	13	17	23	24	25	8	26	
	3	14	17	22	20	25	7	26	
	4	15	16	19	18	24	7	26	
	5	17	16	18	16	23	6	25	
	6	19	16	17	16	23	6	24	
	7	21	16	14	12	23	5	24	
	8	24	15	13	12	22	5	24	
	9	26	15	11	10	22	5	23	
48	1	7	23	30	18	7	28	24	
	2	9	23	27	17	7	26	21	
	3	10	23	25	17	7	21	19	
	4	11	23	24	16	6	19	16	
	5	13	22	22	14	6	17	14	
	6	14	22	18	14	6	13	12	
	7	18	22	17	13	6	10	10	
	8	22	21	15	11	5	8	9	
	9	30	21	14	11	5	5	6	
49	1	2	23	17	13	9	7	17	
	2	3	22	16	11	8	7	15	
	3	8	22	16	11	7	7	15	
	4	10	22	15	9	7	7	15	
	5	13	21	15	9	7	7	14	
	6	15	21	14	6	6	6	13	
	7	16	21	13	6	5	6	13	
	8	21	21	13	5	5	6	12	
	9	30	21	13	3	5	6	11	
50	1	2	26	16	27	11	26	7	
	2	3	23	14	24	9	20	6	
	3	6	20	14	22	9	20	5	
	4	14	20	13	20	8	18	4	
	5	15	17	13	20	7	14	3	
	6	17	14	12	17	5	10	3	
	7	18	14	12	17	4	9	3	
	8	19	11	11	14	3	8	1	
	9	20	10	11	13	1	5	1	
51	1	4	11	10	21	30	15	10	
	2	10	10	9	18	28	13	10	
	3	12	10	8	17	27	12	10	
	4	13	9	7	15	26	11	10	
	5	20	8	7	13	26	9	9	
	6	24	8	6	12	24	7	9	
	7	26	7	6	8	24	5	9	
	8	27	5	5	8	23	5	8	
	9	28	5	5	5	21	3	8	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	72	78	73	76	662	609

************************************************************************