jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	17		2 3 4 5 6 7 8 9 10 11 12 14 17 19 20 24 25 
2	9	12		50 49 48 47 45 40 36 35 33 31 30 21 
3	9	10		51 48 36 34 33 30 29 27 22 18 
4	9	8		45 42 35 31 28 27 26 23 
5	9	6		50 46 43 34 18 13 
6	9	8		49 47 45 42 34 33 27 15 
7	9	7		47 45 33 30 29 27 15 
8	9	11		49 48 47 45 44 43 42 31 30 28 27 
9	9	7		50 48 43 42 30 27 16 
10	9	8		47 45 43 34 32 29 27 18 
11	9	8		49 45 43 40 34 32 27 23 
12	9	9		49 48 47 44 40 37 32 31 27 
13	9	6		47 45 40 37 33 21 
14	9	10		49 47 46 45 44 41 40 37 33 31 
15	9	6		46 43 41 32 31 28 
16	9	8		46 45 44 41 40 38 37 31 
17	9	6		48 46 45 42 35 28 
18	9	6		44 42 41 40 37 31 
19	9	5		50 43 42 39 28 
20	9	5		46 43 42 40 34 
21	9	4		44 42 39 27 
22	9	4		42 37 35 31 
23	9	4		48 46 37 33 
24	9	4		47 46 42 32 
25	9	3		45 42 37 
26	9	2		44 32 
27	9	2		41 38 
28	9	2		40 37 
29	9	2		44 38 
30	9	1		32 
31	9	1		39 
32	9	1		38 
33	9	1		39 
34	9	1		38 
35	9	1		43 
36	9	1		37 
37	9	1		52 
38	9	1		52 
39	9	1		52 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	5	3	4	1	4	26	20	
	2	6	2	4	1	3	25	19	
	3	7	2	4	1	3	25	17	
	4	8	2	4	1	3	23	16	
	5	11	1	4	1	3	21	13	
	6	12	1	4	1	3	20	13	
	7	19	1	4	1	3	18	10	
	8	27	1	4	1	3	18	8	
	9	29	1	4	1	3	16	7	
3	1	1	2	1	2	4	27	19	
	2	2	1	1	1	4	24	17	
	3	5	1	1	1	4	22	14	
	4	6	1	1	1	3	19	12	
	5	8	1	1	1	3	16	10	
	6	13	1	1	1	3	13	10	
	7	22	1	1	1	2	9	7	
	8	26	1	1	1	2	9	4	
	9	27	1	1	1	2	5	3	
4	1	2	4	2	5	4	19	29	
	2	3	4	1	4	4	17	26	
	3	4	4	1	4	4	17	25	
	4	5	4	1	4	4	16	23	
	5	6	3	1	4	4	15	21	
	6	8	3	1	4	4	15	20	
	7	18	2	1	4	4	14	19	
	8	24	2	1	4	4	14	18	
	9	29	2	1	4	4	13	15	
5	1	14	2	5	4	5	29	16	
	2	19	1	4	3	4	28	16	
	3	20	1	4	3	4	28	14	
	4	21	1	4	3	4	28	12	
	5	22	1	4	2	4	28	12	
	6	23	1	4	2	4	28	10	
	7	24	1	4	2	4	28	9	
	8	27	1	4	2	4	28	8	
	9	28	1	4	2	4	28	6	
6	1	3	4	2	4	4	23	20	
	2	6	3	1	4	4	21	20	
	3	7	3	1	4	4	19	20	
	4	14	3	1	4	3	18	20	
	5	17	3	1	4	2	16	20	
	6	21	3	1	3	2	13	20	
	7	22	3	1	3	2	12	20	
	8	23	3	1	3	1	8	20	
	9	25	3	1	3	1	8	19	
7	1	3	5	2	3	5	17	12	
	2	6	4	1	2	4	16	11	
	3	9	4	1	2	3	16	10	
	4	10	3	1	2	3	16	9	
	5	11	3	1	2	2	15	7	
	6	18	3	1	2	2	15	6	
	7	21	3	1	2	1	15	6	
	8	22	2	1	2	1	14	5	
	9	28	2	1	2	1	14	3	
8	1	4	5	3	3	4	20	19	
	2	6	4	2	3	4	19	19	
	3	7	4	2	3	4	18	19	
	4	8	4	2	3	3	18	18	
	5	9	3	2	3	2	18	18	
	6	12	3	2	3	2	17	18	
	7	13	2	2	3	2	16	18	
	8	19	2	2	3	1	16	17	
	9	21	2	2	3	1	16	16	
9	1	3	5	5	2	1	16	16	
	2	9	4	4	2	1	16	15	
	3	14	4	3	2	1	15	15	
	4	19	4	3	2	1	15	14	
	5	20	3	3	2	1	13	14	
	6	24	3	2	2	1	13	13	
	7	25	3	1	2	1	13	13	
	8	29	2	1	2	1	12	12	
	9	30	2	1	2	1	11	11	
10	1	2	5	5	4	3	8	18	
	2	5	4	4	4	3	7	15	
	3	7	4	3	4	3	5	13	
	4	11	3	3	4	3	5	12	
	5	12	2	3	3	3	4	11	
	6	20	2	2	3	3	3	9	
	7	21	2	1	2	3	3	7	
	8	22	1	1	2	3	1	5	
	9	23	1	1	2	3	1	3	
11	1	4	3	4	5	5	18	14	
	2	5	3	4	4	4	17	13	
	3	11	3	4	4	4	17	12	
	4	12	3	4	4	4	17	11	
	5	16	2	4	4	4	16	13	
	6	20	2	3	4	4	16	13	
	7	23	2	3	4	4	15	13	
	8	24	1	3	4	4	14	13	
	9	30	1	3	4	4	14	12	
12	1	6	5	1	4	1	15	19	
	2	12	4	1	4	1	14	19	
	3	14	4	1	4	1	12	17	
	4	16	3	1	4	1	11	16	
	5	24	3	1	4	1	8	16	
	6	27	2	1	4	1	7	14	
	7	28	1	1	4	1	5	14	
	8	29	1	1	4	1	3	12	
	9	30	1	1	4	1	1	12	
13	1	2	2	5	3	4	9	27	
	2	3	2	4	2	4	8	24	
	3	5	2	4	2	4	8	20	
	4	9	2	4	2	3	8	17	
	5	10	2	3	2	2	8	15	
	6	15	1	3	2	2	8	13	
	7	18	1	3	2	1	8	10	
	8	24	1	3	2	1	8	6	
	9	25	1	3	2	1	8	3	
14	1	1	2	4	3	4	26	23	
	2	10	1	4	2	4	25	21	
	3	14	1	3	2	4	25	19	
	4	15	1	3	2	4	24	19	
	5	16	1	3	1	4	24	17	
	6	18	1	2	1	3	23	16	
	7	20	1	1	1	3	22	14	
	8	27	1	1	1	3	22	11	
	9	29	1	1	1	3	22	10	
15	1	2	2	2	5	2	23	5	
	2	3	1	2	4	2	22	4	
	3	8	1	2	4	2	20	4	
	4	14	1	2	4	2	16	4	
	5	15	1	2	3	2	12	4	
	6	16	1	2	3	2	10	4	
	7	25	1	2	2	2	10	4	
	8	26	1	2	2	2	5	4	
	9	27	1	2	2	2	3	4	
16	1	5	2	3	1	4	19	27	
	2	9	2	3	1	4	19	24	
	3	16	2	3	1	4	19	23	
	4	18	2	2	1	4	19	21	
	5	20	2	2	1	4	19	17	
	6	25	1	2	1	3	19	15	
	7	26	1	2	1	3	19	13	
	8	27	1	1	1	3	19	11	
	9	28	1	1	1	3	19	9	
17	1	3	3	2	3	4	3	13	
	2	4	2	2	3	4	3	13	
	3	13	2	2	3	3	3	13	
	4	14	2	2	3	3	2	13	
	5	20	1	1	2	3	2	13	
	6	21	1	1	2	2	2	13	
	7	23	1	1	2	1	1	13	
	8	26	1	1	2	1	1	12	
	9	28	1	1	2	1	1	11	
18	1	2	2	4	4	4	2	24	
	2	12	2	4	4	4	1	23	
	3	18	2	4	4	4	1	22	
	4	19	2	3	4	4	1	20	
	5	23	1	3	3	4	1	19	
	6	24	1	3	3	4	1	17	
	7	25	1	2	3	4	1	17	
	8	27	1	2	3	4	1	14	
	9	29	1	2	3	4	1	13	
19	1	2	4	2	4	4	19	12	
	2	6	3	2	4	3	19	11	
	3	9	3	2	4	3	19	10	
	4	18	3	2	3	3	19	9	
	5	19	3	1	3	3	19	9	
	6	21	2	1	2	2	19	7	
	7	26	2	1	2	2	19	6	
	8	28	2	1	1	2	19	6	
	9	29	2	1	1	2	19	5	
20	1	3	4	5	5	4	28	13	
	2	5	3	5	4	3	28	12	
	3	6	3	5	4	3	27	10	
	4	9	3	5	3	3	26	9	
	5	14	3	5	2	2	26	7	
	6	16	3	5	2	2	26	6	
	7	22	3	5	1	1	25	4	
	8	24	3	5	1	1	24	2	
	9	27	3	5	1	1	24	1	
21	1	1	5	4	5	4	22	12	
	2	2	4	4	4	4	22	12	
	3	3	4	4	4	4	22	11	
	4	8	4	4	4	3	22	10	
	5	11	3	4	4	3	22	9	
	6	22	3	4	4	3	22	8	
	7	25	3	4	4	2	22	8	
	8	26	3	4	4	2	22	7	
	9	27	3	4	4	2	22	6	
22	1	2	4	3	1	4	7	22	
	2	16	4	3	1	4	7	21	
	3	17	4	3	1	4	7	18	
	4	18	3	3	1	4	6	17	
	5	19	2	3	1	4	5	15	
	6	25	2	2	1	4	5	12	
	7	27	1	2	1	4	5	11	
	8	28	1	2	1	4	4	8	
	9	30	1	2	1	4	4	6	
23	1	5	5	4	1	3	8	7	
	2	7	4	4	1	2	8	6	
	3	10	4	4	1	2	8	5	
	4	14	4	4	1	2	8	4	
	5	17	3	4	1	2	8	4	
	6	22	3	3	1	2	7	3	
	7	23	2	3	1	2	7	3	
	8	25	2	3	1	2	7	2	
	9	28	2	3	1	2	7	1	
24	1	3	4	4	5	4	28	23	
	2	5	3	4	4	4	27	23	
	3	12	3	4	4	4	27	21	
	4	15	3	4	3	3	27	19	
	5	22	2	4	2	3	26	16	
	6	25	2	4	2	3	26	13	
	7	28	2	4	2	2	26	13	
	8	29	2	4	1	2	26	11	
	9	30	2	4	1	2	26	9	
25	1	7	4	4	4	3	22	15	
	2	8	4	4	4	2	22	14	
	3	9	4	4	4	2	22	13	
	4	15	4	3	4	2	22	13	
	5	16	4	3	3	2	21	12	
	6	17	3	3	3	2	21	12	
	7	20	3	2	3	2	21	11	
	8	23	3	2	3	2	21	10	
	9	26	3	2	3	2	21	9	
26	1	3	4	3	2	3	12	22	
	2	4	4	2	2	3	11	21	
	3	5	3	2	2	3	11	18	
	4	11	3	2	2	3	10	17	
	5	13	3	2	1	2	10	15	
	6	15	2	1	1	2	9	13	
	7	22	2	1	1	2	9	12	
	8	27	1	1	1	2	8	12	
	9	30	1	1	1	2	8	9	
27	1	3	4	4	4	3	10	25	
	2	4	4	4	4	3	9	25	
	3	9	4	4	4	3	7	24	
	4	10	3	4	4	3	6	22	
	5	11	3	3	4	3	6	21	
	6	13	3	3	4	3	5	20	
	7	21	3	2	4	3	5	17	
	8	22	2	2	4	3	4	17	
	9	26	2	2	4	3	3	15	
28	1	2	5	5	3	4	26	15	
	2	3	4	4	3	4	25	15	
	3	5	4	4	3	4	23	13	
	4	8	4	4	3	4	22	13	
	5	12	3	4	3	3	22	12	
	6	21	3	3	3	3	20	10	
	7	22	3	3	3	3	17	10	
	8	24	3	3	3	2	17	9	
	9	25	3	3	3	2	16	7	
29	1	1	3	5	3	5	9	22	
	2	5	3	4	2	4	7	22	
	3	6	3	4	2	4	7	21	
	4	7	3	4	2	4	6	21	
	5	8	3	4	1	4	5	21	
	6	18	3	3	1	3	4	21	
	7	19	3	3	1	3	4	20	
	8	23	3	3	1	3	3	21	
	9	30	3	3	1	3	2	21	
30	1	1	4	2	3	3	26	27	
	2	4	4	1	3	2	22	25	
	3	5	4	1	3	2	17	23	
	4	6	3	1	2	2	14	22	
	5	13	2	1	2	1	14	18	
	6	14	2	1	2	1	11	17	
	7	23	1	1	1	1	8	16	
	8	26	1	1	1	1	5	14	
	9	30	1	1	1	1	1	11	
31	1	1	3	4	4	3	28	11	
	2	2	3	4	4	3	28	10	
	3	4	3	4	4	3	28	9	
	4	5	3	4	4	3	28	8	
	5	6	2	4	4	3	28	9	
	6	7	2	4	4	3	28	8	
	7	8	2	4	4	3	28	7	
	8	24	2	4	4	3	28	6	
	9	25	2	4	4	3	28	5	
32	1	1	1	4	4	5	16	28	
	2	2	1	4	4	4	16	27	
	3	3	1	4	4	4	16	25	
	4	5	1	3	4	4	16	23	
	5	7	1	3	3	3	16	22	
	6	13	1	2	3	3	16	21	
	7	15	1	2	3	3	16	20	
	8	23	1	1	3	2	16	18	
	9	28	1	1	3	2	16	16	
33	1	5	5	4	2	5	24	19	
	2	9	5	3	2	4	24	18	
	3	14	5	3	2	4	24	17	
	4	19	5	3	2	4	23	16	
	5	20	5	3	1	4	22	16	
	6	21	5	2	1	4	22	15	
	7	22	5	2	1	4	22	14	
	8	26	5	2	1	4	21	15	
	9	27	5	2	1	4	21	14	
34	1	6	5	1	5	1	24	28	
	2	8	4	1	5	1	23	27	
	3	16	4	1	5	1	23	26	
	4	21	4	1	5	1	23	25	
	5	22	3	1	5	1	23	27	
	6	25	3	1	5	1	23	26	
	7	26	3	1	5	1	23	25	
	8	27	3	1	5	1	23	24	
	9	29	3	1	5	1	23	23	
35	1	4	5	5	2	5	23	23	
	2	5	4	4	1	5	22	22	
	3	8	4	4	1	5	22	20	
	4	12	3	4	1	5	21	17	
	5	13	2	4	1	5	21	15	
	6	19	2	4	1	5	20	15	
	7	20	1	4	1	5	20	11	
	8	22	1	4	1	5	19	10	
	9	24	1	4	1	5	19	9	
36	1	1	5	3	3	4	17	23	
	2	12	4	3	3	4	17	22	
	3	13	4	3	3	4	14	20	
	4	18	4	3	3	4	12	19	
	5	19	3	3	3	4	11	17	
	6	20	3	3	3	4	7	14	
	7	21	2	3	3	4	7	13	
	8	23	2	3	3	4	5	12	
	9	28	2	3	3	4	3	10	
37	1	1	2	5	4	2	25	21	
	2	3	2	4	4	2	23	21	
	3	5	2	4	4	2	22	19	
	4	11	2	4	4	2	17	19	
	5	12	2	4	4	2	16	18	
	6	13	2	4	4	2	13	16	
	7	21	2	4	4	2	8	14	
	8	23	2	4	4	2	5	13	
	9	30	2	4	4	2	3	13	
38	1	1	4	4	2	5	22	14	
	2	3	4	4	2	4	19	14	
	3	14	4	4	2	3	18	13	
	4	15	4	3	2	3	17	11	
	5	18	4	3	2	2	16	10	
	6	21	4	3	2	2	14	10	
	7	22	4	2	2	1	13	9	
	8	24	4	2	2	1	12	7	
	9	27	4	2	2	1	11	7	
39	1	1	3	1	4	3	9	25	
	2	10	3	1	4	2	9	25	
	3	13	3	1	4	2	8	25	
	4	14	3	1	3	2	6	25	
	5	15	3	1	2	1	6	25	
	6	16	3	1	2	1	4	25	
	7	18	3	1	2	1	3	25	
	8	26	3	1	1	1	2	25	
	9	27	3	1	1	1	2	24	
40	1	8	5	4	4	4	24	29	
	2	10	5	4	3	3	23	28	
	3	15	5	4	3	3	21	28	
	4	16	5	4	2	2	21	28	
	5	24	5	4	2	2	19	27	
	6	25	5	3	2	2	18	27	
	7	27	5	3	2	2	18	26	
	8	28	5	3	1	1	17	27	
	9	29	5	3	1	1	16	27	
41	1	2	5	3	5	4	23	9	
	2	3	4	3	4	4	22	7	
	3	4	3	3	4	4	19	6	
	4	5	3	3	4	4	17	6	
	5	6	3	3	4	4	15	5	
	6	11	2	3	4	4	14	4	
	7	16	1	3	4	4	11	3	
	8	20	1	3	4	4	9	3	
	9	27	1	3	4	4	6	2	
42	1	5	4	4	1	5	22	25	
	2	6	4	3	1	4	20	22	
	3	14	4	3	1	4	20	18	
	4	17	4	3	1	3	16	16	
	5	22	4	2	1	3	15	15	
	6	23	4	2	1	3	13	11	
	7	24	4	2	1	3	12	10	
	8	28	4	2	1	2	8	4	
	9	30	4	2	1	2	6	3	
43	1	4	2	5	5	2	10	17	
	2	5	2	5	4	2	9	15	
	3	6	2	5	4	2	8	14	
	4	9	2	5	4	2	7	13	
	5	10	2	5	3	2	7	12	
	6	14	2	5	3	2	6	11	
	7	20	2	5	2	2	6	10	
	8	29	2	5	2	2	6	7	
	9	30	2	5	2	2	5	7	
44	1	3	5	4	5	4	25	23	
	2	13	4	3	4	4	25	22	
	3	14	4	3	3	4	24	21	
	4	15	4	3	3	4	23	19	
	5	16	3	2	3	4	21	16	
	6	19	3	2	2	4	20	12	
	7	24	3	2	1	4	18	11	
	8	27	3	2	1	4	17	8	
	9	28	3	2	1	4	16	8	
45	1	1	4	2	3	5	21	13	
	2	4	4	2	2	4	21	11	
	3	5	4	2	2	4	21	10	
	4	6	4	2	2	4	21	9	
	5	21	4	2	2	3	20	9	
	6	22	4	2	2	3	20	8	
	7	25	4	2	2	3	20	7	
	8	29	4	2	2	3	19	5	
	9	30	4	2	2	3	19	4	
46	1	5	5	5	5	3	18	18	
	2	9	4	4	4	3	17	18	
	3	10	4	4	4	3	16	18	
	4	18	3	4	4	3	14	18	
	5	22	2	4	3	3	12	18	
	6	23	2	4	3	3	8	18	
	7	24	1	4	3	3	5	18	
	8	25	1	4	3	3	4	18	
	9	26	1	4	3	3	2	18	
47	1	1	3	4	4	3	11	17	
	2	8	3	3	4	2	11	16	
	3	10	3	3	3	2	10	16	
	4	15	3	2	3	2	10	15	
	5	16	2	2	2	2	9	15	
	6	17	2	2	2	2	9	14	
	7	18	2	1	2	2	8	15	
	8	25	1	1	1	2	7	14	
	9	30	1	1	1	2	7	13	
48	1	1	4	4	4	4	2	29	
	2	4	4	4	3	4	1	27	
	3	6	4	4	3	3	1	25	
	4	7	4	4	2	3	1	21	
	5	14	4	4	2	3	1	18	
	6	17	4	4	2	2	1	17	
	7	19	4	4	2	1	1	16	
	8	20	4	4	1	1	1	13	
	9	22	4	4	1	1	1	12	
49	1	1	4	2	5	2	24	29	
	2	2	4	2	4	1	21	29	
	3	3	3	2	4	1	17	28	
	4	8	3	2	3	1	15	27	
	5	13	3	2	3	1	12	26	
	6	14	2	2	3	1	12	24	
	7	21	1	2	3	1	8	23	
	8	23	1	2	2	1	6	22	
	9	26	1	2	2	1	5	21	
50	1	1	4	5	3	3	30	6	
	2	3	4	4	3	3	25	6	
	3	4	4	4	3	3	22	6	
	4	5	3	4	3	3	19	5	
	5	10	3	3	3	3	18	5	
	6	16	3	3	3	3	17	5	
	7	17	3	3	3	3	12	4	
	8	23	2	3	3	3	10	4	
	9	26	2	3	3	3	8	4	
51	1	4	5	4	4	5	23	12	
	2	5	4	4	3	5	22	11	
	3	6	4	4	3	5	20	12	
	4	7	4	4	3	5	20	11	
	5	10	4	4	3	5	19	11	
	6	18	4	4	3	5	18	11	
	7	19	4	4	3	5	16	11	
	8	28	4	4	3	5	16	10	
	9	29	4	4	3	5	15	11	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	19	17	19	19	752	739

************************************************************************