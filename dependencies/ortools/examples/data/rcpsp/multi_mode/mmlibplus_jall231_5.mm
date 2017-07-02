jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	12		2 3 4 5 6 7 8 9 10 11 12 15 
2	9	9		51 26 22 20 19 18 16 14 13 
3	9	7		28 26 25 24 19 17 13 
4	9	8		34 28 25 24 22 21 18 17 
5	9	7		34 26 25 24 21 18 17 
6	9	5		33 22 21 19 16 
7	9	7		33 26 25 24 23 22 21 
8	9	6		33 28 24 22 21 19 
9	9	6		33 28 25 22 21 19 
10	9	6		51 34 22 21 20 18 
11	9	6		51 34 28 25 24 21 
12	9	5		51 37 29 22 19 
13	9	5		48 34 31 27 21 
14	9	5		48 38 31 27 21 
15	9	2		22 21 
16	9	5		48 45 36 28 25 
17	9	8		50 48 47 36 33 31 30 27 
18	9	9		50 49 46 45 39 37 36 32 30 
19	9	8		50 49 47 46 39 36 34 32 
20	9	7		50 49 46 45 32 30 28 
21	9	7		50 49 46 45 37 36 29 
22	9	5		49 48 36 31 27 
23	9	9		49 48 46 45 44 43 39 37 35 
24	9	6		47 45 39 38 32 31 
25	9	6		50 49 47 46 38 30 
26	9	5		50 46 45 36 30 
27	9	6		46 45 43 41 39 35 
28	9	4		43 39 37 35 
29	9	1		30 
30	9	4		44 43 41 35 
31	9	4		44 43 41 35 
32	9	4		48 44 41 35 
33	9	5		51 46 45 43 41 
34	9	2		45 38 
35	9	2		42 40 
36	9	2		43 42 
37	9	2		47 41 
38	9	2		44 40 
39	9	1		40 
40	9	1		52 
41	9	1		52 
42	9	1		52 
43	9	1		52 
44	9	1		52 
45	9	1		52 
46	9	1		52 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	6	2	3	10	17	
	2	7	2	3	10	16	
	3	10	2	3	10	14	
	4	11	2	3	10	13	
	5	13	2	2	10	11	
	6	15	1	2	10	9	
	7	22	1	1	10	8	
	8	23	1	1	10	6	
	9	25	1	1	10	4	
3	1	3	3	4	30	25	
	2	12	2	3	28	24	
	3	14	2	3	26	23	
	4	17	2	3	26	21	
	5	19	1	3	24	20	
	6	20	1	3	24	18	
	7	23	1	3	22	18	
	8	24	1	3	21	15	
	9	27	1	3	21	14	
4	1	5	2	5	21	18	
	2	8	1	4	21	16	
	3	11	1	4	21	12	
	4	12	1	4	21	11	
	5	13	1	4	20	10	
	6	18	1	4	20	9	
	7	21	1	4	20	7	
	8	25	1	4	20	4	
	9	26	1	4	20	3	
5	1	4	4	3	26	26	
	2	5	3	2	25	26	
	3	6	3	2	20	24	
	4	21	3	2	17	21	
	5	25	3	2	14	19	
	6	26	3	2	14	18	
	7	27	3	2	10	18	
	8	28	3	2	7	14	
	9	30	3	2	6	14	
6	1	5	4	2	17	11	
	2	7	4	2	15	11	
	3	8	4	2	14	11	
	4	9	3	2	14	10	
	5	11	3	2	12	9	
	6	19	2	2	11	9	
	7	24	2	2	11	8	
	8	27	1	2	10	8	
	9	28	1	2	8	8	
7	1	12	5	3	27	23	
	2	17	4	2	26	21	
	3	18	3	2	26	18	
	4	19	3	2	26	16	
	5	20	3	1	25	16	
	6	21	2	1	24	14	
	7	22	1	1	23	11	
	8	23	1	1	22	10	
	9	24	1	1	22	8	
8	1	6	4	4	17	30	
	2	10	3	3	13	29	
	3	11	3	3	13	28	
	4	16	3	3	10	29	
	5	19	3	3	10	28	
	6	20	3	3	8	28	
	7	22	3	3	6	28	
	8	25	3	3	4	28	
	9	28	3	3	3	28	
9	1	11	5	5	25	26	
	2	14	4	5	24	22	
	3	17	4	5	24	19	
	4	19	4	5	24	18	
	5	23	4	5	24	16	
	6	24	3	5	24	13	
	7	27	3	5	24	9	
	8	28	3	5	24	8	
	9	30	3	5	24	7	
10	1	1	2	3	21	22	
	2	4	1	3	20	20	
	3	5	1	3	18	18	
	4	16	1	3	17	17	
	5	17	1	2	17	15	
	6	19	1	2	17	14	
	7	20	1	2	15	11	
	8	23	1	1	14	10	
	9	24	1	1	14	9	
11	1	2	3	3	12	24	
	2	3	3	3	10	22	
	3	12	3	3	10	21	
	4	13	2	3	9	20	
	5	19	2	2	9	18	
	6	20	2	2	8	17	
	7	26	2	2	7	17	
	8	28	1	2	6	14	
	9	30	1	2	6	13	
12	1	3	4	4	10	19	
	2	4	4	4	10	18	
	3	15	4	4	9	17	
	4	17	4	4	8	15	
	5	20	3	3	7	13	
	6	21	3	3	6	11	
	7	28	3	3	4	10	
	8	29	3	2	3	8	
	9	30	3	2	2	8	
13	1	7	3	2	27	24	
	2	8	3	2	27	23	
	3	9	3	2	26	21	
	4	12	3	2	24	19	
	5	15	2	2	21	16	
	6	16	2	1	21	14	
	7	17	2	1	20	13	
	8	19	1	1	17	12	
	9	29	1	1	17	8	
14	1	1	2	4	11	4	
	2	7	2	4	10	4	
	3	8	2	4	10	3	
	4	10	2	4	9	3	
	5	15	1	4	9	3	
	6	21	1	3	8	2	
	7	22	1	3	8	1	
	8	23	1	3	7	2	
	9	24	1	3	7	1	
15	1	3	1	3	15	20	
	2	4	1	3	13	19	
	3	5	1	3	11	19	
	4	12	1	3	10	19	
	5	14	1	2	8	19	
	6	16	1	2	6	19	
	7	21	1	2	6	18	
	8	21	1	1	5	19	
	9	22	1	1	3	19	
16	1	4	4	4	29	28	
	2	9	4	3	26	26	
	3	10	3	3	25	26	
	4	11	3	3	21	24	
	5	17	2	2	19	21	
	6	21	2	2	17	20	
	7	23	1	2	16	19	
	8	24	1	2	13	15	
	9	25	1	2	12	14	
17	1	2	3	3	22	21	
	2	6	3	3	20	18	
	3	10	3	3	18	15	
	4	11	3	2	18	14	
	5	12	3	2	15	11	
	6	15	3	2	14	8	
	7	23	3	2	13	6	
	8	27	3	1	12	5	
	9	28	3	1	12	1	
18	1	2	3	3	12	21	
	2	10	3	3	10	21	
	3	11	3	3	10	19	
	4	18	3	3	9	18	
	5	20	3	3	8	17	
	6	21	3	3	7	17	
	7	25	3	3	7	16	
	8	26	3	3	6	14	
	9	27	3	3	5	14	
19	1	3	5	5	11	6	
	2	5	4	4	11	5	
	3	7	3	4	10	4	
	4	13	3	4	9	3	
	5	16	2	4	9	3	
	6	22	2	4	8	2	
	7	24	1	4	8	2	
	8	27	1	4	8	1	
	9	30	1	4	7	1	
20	1	1	5	4	25	12	
	2	6	4	4	24	10	
	3	7	4	4	24	9	
	4	8	4	4	24	7	
	5	10	4	3	24	6	
	6	14	4	3	24	5	
	7	15	4	3	24	4	
	8	17	4	3	24	3	
	9	25	4	3	24	1	
21	1	4	3	3	22	17	
	2	5	3	3	20	17	
	3	6	3	3	18	17	
	4	7	3	3	13	17	
	5	8	3	3	13	16	
	6	9	3	3	10	17	
	7	16	3	3	6	17	
	8	18	3	3	4	17	
	9	21	3	3	2	17	
22	1	3	4	4	20	21	
	2	4	3	3	20	20	
	3	5	3	3	20	19	
	4	11	3	3	20	18	
	5	14	3	2	20	18	
	6	16	2	2	20	17	
	7	21	2	2	20	16	
	8	24	2	1	20	16	
	9	30	2	1	20	15	
23	1	3	5	5	26	7	
	2	4	4	4	24	6	
	3	7	4	4	24	5	
	4	9	3	3	22	6	
	5	10	2	3	18	6	
	6	21	2	3	16	5	
	7	26	2	2	16	5	
	8	27	1	2	14	5	
	9	28	1	2	12	5	
24	1	1	4	5	26	24	
	2	3	3	5	22	23	
	3	7	3	5	21	21	
	4	8	3	5	18	20	
	5	9	3	5	16	19	
	6	15	2	5	14	18	
	7	23	2	5	12	17	
	8	25	2	5	9	16	
	9	30	2	5	8	16	
25	1	14	1	4	19	15	
	2	15	1	4	18	13	
	3	17	1	4	17	13	
	4	18	1	4	16	11	
	5	19	1	4	15	11	
	6	20	1	4	15	10	
	7	27	1	4	15	9	
	8	28	1	4	14	8	
	9	29	1	4	13	6	
26	1	3	2	4	1	19	
	2	4	2	3	1	17	
	3	6	2	3	1	16	
	4	7	2	3	1	15	
	5	11	2	3	1	14	
	6	12	2	2	1	15	
	7	18	2	2	1	14	
	8	26	2	2	1	13	
	9	28	2	2	1	12	
27	1	5	4	4	20	23	
	2	6	4	4	17	21	
	3	7	4	4	17	20	
	4	8	4	4	15	20	
	5	16	4	4	14	19	
	6	18	4	4	12	19	
	7	19	4	4	10	18	
	8	24	4	4	9	16	
	9	30	4	4	8	16	
28	1	3	5	5	14	18	
	2	4	4	4	14	16	
	3	6	3	4	13	16	
	4	15	3	3	11	16	
	5	16	3	2	11	14	
	6	20	2	2	10	14	
	7	21	2	2	8	13	
	8	27	1	1	8	12	
	9	28	1	1	7	12	
29	1	4	3	4	18	22	
	2	6	3	4	16	22	
	3	11	3	4	15	19	
	4	12	3	4	13	18	
	5	13	3	4	12	18	
	6	17	3	3	10	16	
	7	18	3	3	8	13	
	8	28	3	3	5	13	
	9	30	3	3	5	11	
30	1	6	5	3	23	27	
	2	7	4	3	23	27	
	3	13	4	3	23	26	
	4	15	3	3	23	27	
	5	17	3	3	23	26	
	6	17	2	3	22	27	
	7	18	2	3	22	26	
	8	19	1	3	22	26	
	9	27	1	3	22	25	
31	1	1	2	3	17	13	
	2	3	2	3	14	13	
	3	18	2	3	13	13	
	4	19	2	3	12	13	
	5	20	2	3	11	12	
	6	24	2	2	9	12	
	7	27	2	2	8	12	
	8	29	2	2	6	12	
	9	30	2	2	5	12	
32	1	2	3	4	19	17	
	2	3	3	4	17	16	
	3	8	3	4	17	15	
	4	12	3	4	17	14	
	5	15	3	4	16	15	
	6	20	3	4	15	15	
	7	28	3	4	15	14	
	8	29	3	4	14	14	
	9	30	3	4	14	13	
33	1	1	5	2	4	25	
	2	2	4	1	4	25	
	3	4	4	1	4	24	
	4	5	4	1	4	23	
	5	8	4	1	4	22	
	6	10	3	1	4	22	
	7	14	3	1	4	21	
	8	15	3	1	4	19	
	9	26	3	1	4	18	
34	1	2	5	5	22	24	
	2	8	4	4	22	23	
	3	12	4	4	21	22	
	4	16	3	4	20	22	
	5	17	2	3	19	22	
	6	18	2	3	19	21	
	7	19	1	2	19	21	
	8	20	1	2	18	20	
	9	29	1	2	17	20	
35	1	1	4	3	20	18	
	2	2	3	2	20	17	
	3	6	3	2	18	17	
	4	10	3	2	16	15	
	5	12	3	2	13	14	
	6	13	3	2	13	13	
	7	17	3	2	11	13	
	8	18	3	2	10	12	
	9	23	3	2	8	11	
36	1	4	3	5	18	18	
	2	11	3	4	17	17	
	3	13	3	4	15	17	
	4	15	3	4	15	16	
	5	18	2	3	13	15	
	6	24	2	3	11	15	
	7	25	2	2	10	15	
	8	28	2	2	8	13	
	9	29	2	2	8	12	
37	1	1	4	4	29	26	
	2	7	3	4	28	24	
	3	8	3	4	27	22	
	4	9	2	4	26	21	
	5	12	2	4	26	19	
	6	15	2	4	24	16	
	7	18	2	4	23	14	
	8	23	1	4	23	13	
	9	28	1	4	22	12	
38	1	1	3	3	13	26	
	2	7	2	3	12	25	
	3	12	2	3	12	23	
	4	13	2	3	11	21	
	5	14	2	2	11	20	
	6	15	2	2	11	19	
	7	16	2	2	11	16	
	8	17	2	2	10	16	
	9	19	2	2	10	14	
39	1	7	4	3	25	10	
	2	15	4	2	23	10	
	3	17	4	2	23	8	
	4	18	4	2	22	8	
	5	19	4	2	22	7	
	6	21	4	1	21	6	
	7	24	4	1	21	5	
	8	29	4	1	20	4	
	9	30	4	1	20	3	
40	1	1	4	2	15	26	
	2	2	4	2	14	21	
	3	3	4	2	13	18	
	4	12	4	2	11	18	
	5	13	3	2	11	14	
	6	20	3	2	10	11	
	7	21	2	2	8	10	
	8	24	2	2	7	6	
	9	29	2	2	7	4	
41	1	2	4	5	29	15	
	2	4	4	4	28	14	
	3	5	4	4	28	13	
	4	7	4	4	27	14	
	5	11	4	3	27	13	
	6	13	4	3	27	12	
	7	16	4	3	26	13	
	8	19	4	2	26	13	
	9	24	4	2	26	12	
42	1	1	5	4	19	29	
	2	2	5	4	19	28	
	3	12	5	4	19	27	
	4	13	5	4	19	26	
	5	17	5	4	18	28	
	6	18	5	4	18	27	
	7	24	5	4	18	26	
	8	27	5	4	18	25	
	9	29	5	4	18	24	
43	1	6	4	3	13	30	
	2	8	4	3	13	28	
	3	15	4	3	12	28	
	4	21	4	3	12	27	
	5	22	4	2	11	26	
	6	26	4	2	11	25	
	7	27	4	2	10	25	
	8	28	4	1	10	24	
	9	29	4	1	10	23	
44	1	2	3	4	28	27	
	2	5	3	3	25	25	
	3	10	3	3	22	24	
	4	17	3	3	21	22	
	5	18	2	3	18	21	
	6	25	2	2	13	20	
	7	28	2	2	12	19	
	8	29	1	2	10	17	
	9	30	1	2	7	16	
45	1	10	1	5	28	30	
	2	12	1	4	27	27	
	3	14	1	4	27	26	
	4	19	1	4	25	26	
	5	20	1	4	23	24	
	6	25	1	3	22	24	
	7	27	1	3	21	23	
	8	29	1	3	19	21	
	9	30	1	3	17	21	
46	1	4	4	4	24	29	
	2	5	4	4	24	28	
	3	7	4	4	22	25	
	4	10	4	4	21	25	
	5	18	4	4	19	24	
	6	23	4	4	19	21	
	7	24	4	4	18	20	
	8	28	4	4	16	19	
	9	30	4	4	15	17	
47	1	4	4	3	25	13	
	2	5	3	3	24	13	
	3	12	3	3	24	12	
	4	13	2	3	23	13	
	5	14	2	3	22	13	
	6	18	2	3	22	12	
	7	20	1	3	22	13	
	8	22	1	3	21	13	
	9	26	1	3	20	13	
48	1	1	1	4	17	20	
	2	10	1	3	14	20	
	3	11	1	3	14	18	
	4	12	1	3	12	18	
	5	16	1	2	8	16	
	6	21	1	2	8	15	
	7	22	1	2	5	14	
	8	26	1	2	4	13	
	9	27	1	2	2	12	
49	1	11	3	5	22	24	
	2	17	3	5	21	24	
	3	18	3	5	20	24	
	4	19	3	5	17	24	
	5	20	3	5	16	24	
	6	21	3	5	14	24	
	7	22	3	5	12	24	
	8	23	3	5	10	24	
	9	28	3	5	9	24	
50	1	7	4	3	14	19	
	2	12	3	3	14	18	
	3	17	3	3	13	17	
	4	18	3	2	11	15	
	5	19	2	2	8	15	
	6	20	2	2	7	15	
	7	21	2	2	7	14	
	8	23	2	1	5	13	
	9	28	2	1	4	12	
51	1	6	5	4	13	22	
	2	16	4	3	13	22	
	3	18	4	3	11	21	
	4	20	4	3	10	19	
	5	25	4	3	7	19	
	6	27	4	3	6	16	
	7	28	4	3	6	15	
	8	29	4	3	4	14	
	9	30	4	3	3	14	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	22	23	870	930

************************************************************************
