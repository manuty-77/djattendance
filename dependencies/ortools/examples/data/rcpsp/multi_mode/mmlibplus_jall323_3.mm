jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 6 7 
2	9	4		11 10 9 8 
3	9	5		17 14 13 10 9 
4	9	4		17 12 10 9 
5	9	4		17 14 13 10 
6	9	3		17 10 9 
7	9	4		23 17 16 10 
8	9	5		24 18 17 15 14 
9	9	4		23 18 16 15 
10	9	5		26 24 21 18 15 
11	9	4		26 23 20 13 
12	9	5		28 27 23 22 18 
13	9	2		21 15 
14	9	6		29 28 27 26 23 22 
15	9	4		29 28 22 19 
16	9	4		28 27 26 21 
17	9	4		30 29 27 22 
18	9	2		30 20 
19	9	5		39 33 32 30 27 
20	9	3		39 29 25 
21	9	3		30 29 25 
22	9	2		39 25 
23	9	3		33 32 30 
24	9	3		33 32 30 
25	9	5		46 37 33 32 31 
26	9	4		37 33 32 31 
27	9	4		46 38 37 31 
28	9	4		46 39 33 31 
29	9	3		46 32 31 
30	9	3		46 37 31 
31	9	5		42 41 36 35 34 
32	9	5		42 41 38 36 35 
33	9	3		42 40 34 
34	9	5		51 50 49 44 43 
35	9	3		48 44 40 
36	9	3		48 44 40 
37	9	3		48 44 40 
38	9	4		50 49 45 43 
39	9	3		50 44 43 
40	9	4		51 50 49 47 
41	9	3		49 48 45 
42	9	1		44 
43	9	2		48 47 
44	9	1		45 
45	9	1		47 
46	9	1		47 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	1	3	4	5	1	20	24	24	20	
	2	2	3	4	4	1	18	24	24	19	
	3	5	3	4	4	1	17	23	24	18	
	4	10	3	4	4	1	14	22	23	13	
	5	11	3	4	4	1	13	21	23	13	
	6	20	2	4	4	1	10	19	22	10	
	7	25	2	4	4	1	8	19	21	9	
	8	26	2	4	4	1	6	17	21	4	
	9	28	2	4	4	1	4	16	21	2	
3	1	1	5	2	4	2	10	15	11	21	
	2	5	5	2	4	2	10	14	10	17	
	3	10	5	2	3	2	10	13	9	16	
	4	13	5	2	3	2	9	13	8	15	
	5	14	5	2	3	1	9	11	8	13	
	6	19	5	2	2	1	8	10	7	9	
	7	21	5	2	2	1	8	9	5	8	
	8	25	5	2	1	1	7	9	5	7	
	9	27	5	2	1	1	7	8	4	4	
4	1	1	3	4	3	5	25	14	27	19	
	2	3	2	3	3	4	23	14	25	17	
	3	5	2	3	3	4	22	12	23	17	
	4	9	2	3	2	4	18	12	20	16	
	5	11	2	3	2	4	17	10	15	14	
	6	16	1	2	2	4	13	8	14	11	
	7	17	1	2	2	4	10	8	10	11	
	8	18	1	2	1	4	7	5	10	10	
	9	20	1	2	1	4	5	4	7	7	
5	1	5	3	3	5	5	26	22	25	17	
	2	6	3	3	5	4	25	18	25	16	
	3	7	3	3	5	4	25	18	24	15	
	4	8	3	3	5	3	22	14	23	14	
	5	9	3	2	5	3	21	11	20	12	
	6	12	3	2	5	2	20	9	19	11	
	7	13	3	2	5	1	18	8	17	10	
	8	20	3	2	5	1	17	6	16	9	
	9	26	3	2	5	1	16	4	15	7	
6	1	5	4	3	2	3	21	19	16	13	
	2	10	4	2	2	2	21	18	15	12	
	3	11	4	2	2	2	18	18	15	11	
	4	19	4	2	2	2	16	17	13	10	
	5	25	3	2	2	1	13	17	11	9	
	6	26	3	2	2	1	12	16	10	9	
	7	28	3	2	2	1	10	15	8	8	
	8	29	2	2	2	1	7	15	6	6	
	9	30	2	2	2	1	7	15	6	5	
7	1	2	4	4	4	1	25	9	25	16	
	2	3	4	3	3	1	23	9	25	14	
	3	4	4	3	3	1	21	9	25	13	
	4	14	4	3	3	1	21	9	25	12	
	5	19	4	2	3	1	18	9	25	12	
	6	22	4	2	2	1	17	9	25	11	
	7	23	4	1	2	1	16	9	25	10	
	8	24	4	1	2	1	16	9	25	9	
	9	26	4	1	2	1	14	9	25	9	
8	1	3	3	2	3	3	22	28	14	26	
	2	9	2	2	3	3	22	26	12	23	
	3	11	2	2	3	3	22	26	12	21	
	4	12	2	2	3	3	22	24	10	16	
	5	13	2	2	3	3	21	22	9	15	
	6	14	1	2	3	2	21	20	8	13	
	7	15	1	2	3	2	21	19	7	7	
	8	16	1	2	3	2	21	19	7	5	
	9	24	1	2	3	2	21	17	5	2	
9	1	2	2	3	5	5	17	24	30	25	
	2	9	2	2	5	4	16	22	28	20	
	3	12	2	2	5	4	15	18	25	19	
	4	13	2	2	5	4	13	16	24	17	
	5	15	2	2	5	4	13	12	22	14	
	6	20	2	2	5	4	12	9	22	11	
	7	23	2	2	5	4	11	8	20	9	
	8	24	2	2	5	4	10	4	18	8	
	9	26	2	2	5	4	10	1	17	5	
10	1	1	4	3	2	1	15	23	10	22	
	2	3	4	2	1	1	14	20	8	22	
	3	4	4	2	1	1	14	18	8	22	
	4	9	4	2	1	1	14	16	8	22	
	5	10	4	2	1	1	13	15	7	22	
	6	13	3	2	1	1	13	10	6	22	
	7	19	3	2	1	1	13	10	6	21	
	8	20	3	2	1	1	13	6	5	22	
	9	23	3	2	1	1	13	5	5	22	
11	1	1	4	4	3	4	22	30	9	14	
	2	3	4	4	3	4	20	26	8	13	
	3	7	4	4	3	4	18	23	8	13	
	4	13	4	4	3	4	16	23	7	12	
	5	15	4	4	3	4	14	21	7	12	
	6	16	4	3	3	3	12	19	7	12	
	7	17	4	3	3	3	10	17	6	11	
	8	19	4	3	3	3	8	14	6	11	
	9	30	4	3	3	3	5	13	5	10	
12	1	2	4	3	5	4	19	2	18	12	
	2	4	4	3	4	3	17	2	17	12	
	3	8	4	3	4	3	16	2	17	12	
	4	9	4	3	4	3	15	2	17	12	
	5	16	3	3	4	2	15	2	16	12	
	6	18	3	3	3	2	13	2	16	12	
	7	19	3	3	3	2	12	2	15	12	
	8	24	2	3	3	2	11	2	15	12	
	9	27	2	3	3	2	10	2	15	12	
13	1	1	5	4	1	5	23	21	19	24	
	2	2	4	4	1	4	20	18	16	24	
	3	7	4	4	1	4	16	17	14	24	
	4	8	3	4	1	4	15	13	14	24	
	5	14	3	4	1	3	11	13	12	23	
	6	17	2	3	1	3	9	11	9	23	
	7	24	2	3	1	3	6	6	7	22	
	8	26	1	3	1	3	6	4	5	22	
	9	28	1	3	1	3	4	1	4	22	
14	1	7	3	2	4	4	28	13	10	17	
	2	12	3	2	4	4	26	12	10	17	
	3	13	3	2	4	4	22	11	9	17	
	4	14	3	2	4	3	21	11	7	17	
	5	15	2	1	4	3	18	10	7	17	
	6	21	2	1	4	2	18	10	6	17	
	7	23	1	1	4	1	16	9	5	17	
	8	27	1	1	4	1	14	9	3	17	
	9	30	1	1	4	1	12	8	3	17	
15	1	5	3	5	4	5	25	18	17	17	
	2	8	3	4	3	4	24	17	17	16	
	3	11	3	4	3	3	24	16	17	15	
	4	12	3	3	3	3	21	15	17	15	
	5	13	3	3	2	2	21	15	17	15	
	6	14	3	3	2	2	19	14	17	14	
	7	18	3	2	2	2	18	14	17	13	
	8	24	3	2	2	1	16	13	17	13	
	9	28	3	2	2	1	16	13	17	12	
16	1	1	3	4	2	2	25	6	27	16	
	2	8	3	3	2	2	24	4	27	14	
	3	10	3	3	2	2	24	4	26	14	
	4	14	2	3	2	2	23	4	23	13	
	5	18	2	3	2	2	22	3	23	12	
	6	25	2	3	2	1	22	3	20	10	
	7	26	1	3	2	1	21	2	19	8	
	8	29	1	3	2	1	21	1	17	8	
	9	30	1	3	2	1	21	1	16	7	
17	1	1	3	5	2	2	9	9	29	27	
	2	2	3	4	2	2	9	8	28	27	
	3	4	3	4	2	2	9	8	27	27	
	4	7	3	3	2	2	9	7	24	27	
	5	9	3	3	2	2	8	7	23	26	
	6	10	3	3	2	2	8	6	22	26	
	7	16	3	2	2	2	8	6	20	26	
	8	23	3	2	2	2	8	5	20	26	
	9	30	3	2	2	2	8	5	19	26	
18	1	11	3	2	4	3	10	14	14	17	
	2	12	3	1	3	3	9	13	13	16	
	3	13	3	1	3	3	9	13	13	15	
	4	14	3	1	3	3	8	13	12	16	
	5	15	2	1	3	3	7	12	11	15	
	6	16	2	1	2	3	7	11	9	15	
	7	17	2	1	2	3	7	11	9	14	
	8	20	2	1	2	3	6	11	7	14	
	9	24	2	1	2	3	6	10	6	14	
19	1	1	4	2	4	5	9	26	21	18	
	2	3	4	2	3	4	9	26	21	17	
	3	5	3	2	3	4	9	26	19	16	
	4	6	3	2	3	3	9	26	19	14	
	5	8	2	2	3	3	9	26	17	14	
	6	9	2	2	2	2	8	26	16	13	
	7	17	1	2	2	2	8	26	14	13	
	8	18	1	2	2	1	8	26	14	12	
	9	28	1	2	2	1	8	26	12	11	
20	1	2	3	4	4	5	14	28	20	25	
	2	5	3	4	4	4	13	26	18	25	
	3	10	3	4	3	4	12	23	18	23	
	4	11	3	3	3	4	10	21	17	22	
	5	17	3	3	2	3	10	19	17	22	
	6	18	3	2	2	3	10	17	16	20	
	7	19	3	1	2	3	8	17	16	19	
	8	26	3	1	1	2	7	14	15	19	
	9	29	3	1	1	2	7	13	15	17	
21	1	4	4	3	1	1	10	25	26	16	
	2	5	3	3	1	1	9	21	21	14	
	3	9	3	3	1	1	9	19	20	13	
	4	11	3	3	1	1	9	16	16	13	
	5	14	2	3	1	1	8	14	15	12	
	6	19	2	2	1	1	8	9	12	12	
	7	22	2	2	1	1	8	6	8	11	
	8	28	1	2	1	1	7	6	6	9	
	9	30	1	2	1	1	7	1	3	9	
22	1	3	5	4	4	4	29	26	14	25	
	2	6	5	3	3	3	24	22	13	24	
	3	7	5	3	3	3	23	18	12	24	
	4	14	5	3	3	2	20	18	12	23	
	5	17	5	2	2	2	19	13	11	22	
	6	21	5	2	2	2	15	12	10	22	
	7	22	5	1	2	2	12	8	10	21	
	8	23	5	1	2	1	10	5	10	21	
	9	24	5	1	2	1	7	3	9	21	
23	1	1	3	1	4	2	19	23	28	14	
	2	11	2	1	3	1	18	21	27	14	
	3	16	2	1	3	1	18	19	25	12	
	4	20	2	1	2	1	17	17	24	11	
	5	21	2	1	2	1	17	16	23	9	
	6	24	1	1	2	1	17	15	21	9	
	7	26	1	1	1	1	16	14	21	7	
	8	27	1	1	1	1	16	12	19	6	
	9	29	1	1	1	1	16	9	18	5	
24	1	3	4	3	4	3	13	11	25	26	
	2	9	4	3	3	3	12	9	22	26	
	3	15	4	3	3	3	12	9	20	23	
	4	17	4	3	3	3	12	8	17	22	
	5	21	4	3	3	3	12	6	16	21	
	6	24	4	3	3	3	12	5	15	19	
	7	25	4	3	3	3	12	4	13	18	
	8	27	4	3	3	3	12	3	11	16	
	9	28	4	3	3	3	12	3	8	15	
25	1	1	4	3	3	4	24	10	24	22	
	2	3	4	3	3	4	24	9	23	20	
	3	5	4	3	3	4	24	9	23	19	
	4	16	4	3	3	4	24	8	23	18	
	5	19	3	3	3	3	24	7	23	18	
	6	23	3	3	2	3	24	7	22	18	
	7	24	3	3	2	3	24	6	22	17	
	8	27	3	3	2	3	24	6	22	16	
	9	29	3	3	2	3	24	6	22	15	
26	1	1	3	5	1	4	22	18	28	26	
	2	2	3	4	1	3	18	16	26	25	
	3	7	3	4	1	3	15	16	25	24	
	4	11	3	4	1	2	15	14	25	24	
	5	13	2	4	1	2	12	11	24	24	
	6	14	2	4	1	2	10	10	22	23	
	7	17	1	4	1	2	8	10	22	23	
	8	22	1	4	1	1	4	8	21	22	
	9	29	1	4	1	1	1	6	19	22	
27	1	4	3	4	2	5	26	17	26	14	
	2	6	3	4	2	4	25	17	23	14	
	3	10	3	4	2	4	23	15	21	14	
	4	11	3	4	2	3	21	14	17	14	
	5	12	3	3	2	2	21	14	14	13	
	6	15	3	3	2	2	19	13	12	13	
	7	17	3	3	2	2	19	12	11	13	
	8	24	3	2	2	1	17	10	7	12	
	9	27	3	2	2	1	15	9	7	12	
28	1	1	5	3	4	5	27	24	24	16	
	2	9	4	2	3	4	27	21	21	12	
	3	11	4	2	3	4	27	21	21	11	
	4	19	4	2	3	3	27	18	18	9	
	5	21	3	2	3	2	26	18	16	9	
	6	22	3	1	2	2	26	17	15	7	
	7	24	3	1	2	2	26	16	13	5	
	8	25	2	1	2	1	26	13	11	5	
	9	30	2	1	2	1	26	12	10	2	
29	1	7	3	5	5	2	10	20	1	11	
	2	14	2	4	4	2	8	19	1	11	
	3	15	2	3	4	2	7	19	1	10	
	4	21	2	3	4	2	6	19	1	8	
	5	22	2	3	3	1	5	19	1	7	
	6	23	1	2	3	1	4	19	1	6	
	7	26	1	2	3	1	3	19	1	5	
	8	28	1	1	2	1	3	19	1	5	
	9	29	1	1	2	1	1	19	1	4	
30	1	1	2	3	2	2	28	30	16	27	
	2	2	2	2	2	1	27	26	14	26	
	3	3	2	2	2	1	24	26	12	25	
	4	7	2	2	2	1	23	23	11	24	
	5	8	2	2	2	1	21	22	9	23	
	6	9	2	2	1	1	18	21	8	22	
	7	13	2	2	1	1	17	19	5	21	
	8	21	2	2	1	1	16	18	5	19	
	9	27	2	2	1	1	13	17	3	19	
31	1	7	3	4	4	4	21	12	22	16	
	2	9	3	3	4	4	20	11	17	14	
	3	13	3	3	4	3	19	11	16	13	
	4	17	3	3	4	3	17	11	14	13	
	5	20	3	2	4	3	16	10	11	11	
	6	21	3	2	4	2	14	10	10	11	
	7	22	3	2	4	1	13	9	6	10	
	8	23	3	1	4	1	13	9	5	8	
	9	30	3	1	4	1	11	9	1	8	
32	1	1	3	4	4	1	16	25	27	21	
	2	4	3	4	4	1	15	24	26	19	
	3	6	3	4	4	1	14	24	26	19	
	4	9	2	3	4	1	14	23	26	19	
	5	10	2	3	3	1	13	23	26	17	
	6	23	2	3	3	1	12	23	25	17	
	7	24	1	2	3	1	11	22	25	16	
	8	28	1	2	3	1	10	22	25	16	
	9	29	1	2	3	1	10	22	25	15	
33	1	3	3	5	3	2	26	20	21	30	
	2	10	3	4	3	2	24	19	18	25	
	3	15	3	4	3	2	20	18	17	22	
	4	16	2	4	2	2	19	18	16	22	
	5	17	2	4	2	2	18	15	14	18	
	6	18	2	3	2	2	15	15	12	15	
	7	19	1	3	1	2	12	13	9	14	
	8	20	1	3	1	2	9	11	7	10	
	9	29	1	3	1	2	7	11	6	8	
34	1	1	4	2	4	4	18	18	3	29	
	2	2	4	2	4	4	18	15	3	24	
	3	3	4	2	4	4	18	14	3	22	
	4	4	4	2	4	4	17	12	3	19	
	5	5	4	2	4	4	17	11	3	17	
	6	6	4	1	4	4	17	10	2	14	
	7	7	4	1	4	4	17	8	2	12	
	8	8	4	1	4	4	16	5	2	10	
	9	14	4	1	4	4	16	4	2	6	
35	1	1	5	3	2	3	28	18	27	28	
	2	8	4	3	2	3	26	16	26	23	
	3	12	4	3	2	3	25	12	25	22	
	4	18	4	3	2	3	23	10	25	19	
	5	21	4	3	2	3	22	9	24	17	
	6	23	4	3	2	3	22	6	22	13	
	7	25	4	3	2	3	21	5	22	13	
	8	26	4	3	2	3	20	2	20	9	
	9	28	4	3	2	3	19	2	20	5	
36	1	4	4	1	4	2	9	28	15	29	
	2	5	4	1	4	1	8	27	14	27	
	3	8	4	1	4	1	8	27	13	27	
	4	15	4	1	4	1	7	25	13	26	
	5	16	4	1	3	1	5	24	13	26	
	6	19	3	1	3	1	4	23	12	26	
	7	22	3	1	3	1	3	23	12	25	
	8	27	3	1	3	1	3	22	11	24	
	9	30	3	1	3	1	2	20	11	24	
37	1	7	3	5	3	4	26	15	28	19	
	2	8	2	4	3	3	26	14	26	18	
	3	10	2	4	3	3	26	14	26	17	
	4	12	2	3	3	3	26	14	25	18	
	5	17	2	3	3	2	26	14	25	17	
	6	22	2	2	3	2	26	14	24	17	
	7	23	2	1	3	2	26	14	24	17	
	8	24	2	1	3	1	26	14	23	17	
	9	28	2	1	3	1	26	14	23	16	
38	1	4	3	4	3	5	19	18	26	10	
	2	7	2	3	3	4	19	17	23	10	
	3	9	2	3	3	4	17	16	20	9	
	4	11	2	3	3	3	17	15	20	7	
	5	12	2	2	3	2	15	13	16	6	
	6	13	2	2	3	2	13	12	12	6	
	7	14	2	1	3	2	13	11	10	5	
	8	16	2	1	3	1	11	11	7	4	
	9	26	2	1	3	1	10	9	4	3	
39	1	2	3	4	5	3	20	25	26	25	
	2	7	3	4	4	3	19	24	23	24	
	3	16	3	4	4	3	19	20	20	23	
	4	17	3	4	4	3	19	17	16	21	
	5	18	3	4	4	3	18	14	15	21	
	6	19	3	4	4	3	17	11	11	19	
	7	20	3	4	4	3	16	10	8	19	
	8	23	3	4	4	3	15	7	5	17	
	9	26	3	4	4	3	15	4	3	17	
40	1	3	3	3	5	3	23	28	23	9	
	2	5	3	2	4	3	22	27	22	9	
	3	8	3	2	3	3	21	26	21	9	
	4	10	3	2	3	3	21	25	19	8	
	5	12	3	2	2	3	19	24	19	8	
	6	17	3	2	2	2	18	24	17	7	
	7	21	3	2	2	2	17	23	16	6	
	8	22	3	2	1	2	15	22	15	6	
	9	28	3	2	1	2	13	22	13	6	
41	1	5	1	2	4	4	29	24	22	26	
	2	6	1	2	4	3	28	22	20	25	
	3	10	1	2	4	3	28	18	18	23	
	4	23	1	2	4	3	27	18	17	23	
	5	24	1	2	4	3	27	14	14	22	
	6	25	1	2	4	3	27	11	11	22	
	7	26	1	2	4	3	27	9	10	21	
	8	29	1	2	4	3	26	6	8	20	
	9	30	1	2	4	3	26	2	5	19	
42	1	6	5	5	4	4	25	19	25	27	
	2	13	5	4	4	4	24	17	24	23	
	3	14	5	4	4	4	23	17	23	22	
	4	24	5	4	3	4	18	16	23	19	
	5	25	5	3	2	4	17	15	22	17	
	6	26	5	3	2	3	15	15	21	15	
	7	27	5	3	1	3	12	14	21	14	
	8	28	5	2	1	3	10	14	21	11	
	9	29	5	2	1	3	9	13	20	10	
43	1	10	2	2	1	3	17	21	30	13	
	2	15	2	2	1	2	15	19	29	13	
	3	18	2	2	1	2	14	18	28	12	
	4	23	2	2	1	2	14	18	27	11	
	5	24	2	1	1	2	11	17	26	11	
	6	25	2	1	1	2	11	16	26	10	
	7	26	2	1	1	2	10	15	26	10	
	8	27	2	1	1	2	9	14	25	9	
	9	28	2	1	1	2	7	13	24	8	
44	1	4	4	1	4	3	20	20	28	17	
	2	6	4	1	4	3	20	18	27	15	
	3	7	4	1	4	3	18	17	26	14	
	4	12	4	1	3	3	18	17	23	13	
	5	13	4	1	3	3	17	16	23	10	
	6	16	4	1	3	3	16	15	22	8	
	7	24	4	1	3	3	14	14	21	6	
	8	25	4	1	2	3	13	12	19	3	
	9	28	4	1	2	3	13	12	17	3	
45	1	5	3	1	5	5	27	29	12	26	
	2	7	3	1	4	4	24	26	12	25	
	3	14	3	1	4	4	23	25	10	25	
	4	15	3	1	4	4	22	22	8	24	
	5	22	2	1	4	3	19	19	6	24	
	6	23	2	1	4	3	18	16	5	23	
	7	24	2	1	4	3	17	16	4	23	
	8	25	2	1	4	3	16	12	3	22	
	9	26	2	1	4	3	14	10	1	22	
46	1	9	2	2	4	2	29	19	7	26	
	2	10	2	1	4	2	24	18	6	25	
	3	14	2	1	4	2	22	16	6	23	
	4	15	2	1	4	2	21	15	6	23	
	5	16	2	1	4	1	20	12	6	21	
	6	18	2	1	4	1	15	11	5	20	
	7	21	2	1	4	1	13	11	5	19	
	8	22	2	1	4	1	11	8	5	18	
	9	23	2	1	4	1	10	8	5	18	
47	1	6	2	4	2	4	15	9	22	26	
	2	8	2	4	2	4	14	8	19	26	
	3	9	2	4	2	4	12	8	18	26	
	4	10	2	4	2	4	10	7	17	25	
	5	12	2	4	2	4	7	7	15	25	
	6	13	1	4	2	3	7	7	15	25	
	7	14	1	4	2	3	4	6	13	25	
	8	24	1	4	2	3	4	6	11	24	
	9	27	1	4	2	3	1	5	10	24	
48	1	3	5	4	5	4	20	3	21	24	
	2	5	4	3	4	4	20	2	21	22	
	3	10	4	3	4	4	20	2	20	22	
	4	11	3	2	3	4	20	2	20	20	
	5	13	3	2	3	4	20	2	19	20	
	6	17	3	2	3	4	20	2	19	19	
	7	18	2	1	3	4	20	2	18	18	
	8	22	2	1	2	4	20	2	18	16	
	9	30	2	1	2	4	20	2	18	15	
49	1	3	1	2	4	4	16	26	25	14	
	2	4	1	1	3	4	16	22	20	13	
	3	6	1	1	3	4	15	19	20	12	
	4	8	1	1	3	4	13	16	17	11	
	5	12	1	1	3	4	13	13	13	10	
	6	15	1	1	2	4	11	10	11	10	
	7	16	1	1	2	4	10	7	7	9	
	8	23	1	1	2	4	8	6	7	9	
	9	29	1	1	2	4	8	3	5	8	
50	1	8	4	4	4	3	28	26	16	16	
	2	11	3	4	4	3	24	25	15	15	
	3	13	3	3	4	3	23	24	14	13	
	4	21	2	3	4	2	19	24	14	11	
	5	22	2	3	4	2	16	23	14	9	
	6	23	2	2	4	2	15	21	13	8	
	7	24	1	1	4	2	11	20	13	5	
	8	25	1	1	4	1	8	20	12	5	
	9	27	1	1	4	1	6	19	12	2	
51	1	1	3	4	5	4	25	14	29	11	
	2	5	2	3	4	3	25	13	28	11	
	3	11	2	3	4	3	23	12	28	10	
	4	20	2	3	3	3	21	11	28	8	
	5	21	2	3	3	2	19	11	27	8	
	6	23	2	3	3	2	16	10	27	8	
	7	24	2	3	2	1	13	10	27	7	
	8	27	2	3	2	1	12	8	27	6	
	9	28	2	3	2	1	9	8	27	5	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	21	16	18	19	799	717	801	793

************************************************************************
