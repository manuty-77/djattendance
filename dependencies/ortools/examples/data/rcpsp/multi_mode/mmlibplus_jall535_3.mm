jobs  (incl. supersource/sink ):	102
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 6 7 9 15 16 
2	6	8		20 19 14 13 12 11 10 8 
3	6	7		30 26 24 21 20 14 11 
4	6	9		36 30 27 26 24 23 21 20 18 
5	6	6		26 24 22 21 20 11 
6	6	4		27 19 14 12 
7	6	5		28 24 21 19 17 
8	6	5		36 27 24 23 18 
9	6	6		35 30 29 27 24 23 
10	6	8		44 39 36 32 31 30 29 26 
11	6	7		38 36 35 31 29 27 23 
12	6	5		37 35 29 24 23 
13	6	4		35 32 26 21 
14	6	3		37 25 17 
15	6	3		37 24 17 
16	6	6		37 36 34 32 30 21 
17	6	4		38 31 29 23 
18	6	7		44 39 37 35 32 31 29 
19	6	6		44 42 39 35 32 26 
20	6	6		41 39 38 34 32 31 
21	6	4		44 39 31 29 
22	6	6		44 40 39 38 36 32 
23	6	6		44 41 40 39 34 32 
24	6	6		46 44 43 39 38 31 
25	6	6		48 42 41 39 38 31 
26	6	5		41 38 37 34 33 
27	6	5		48 42 41 33 32 
28	6	5		46 43 41 39 35 
29	6	7		50 48 46 45 42 41 40 
30	6	7		50 47 45 43 42 41 40 
31	6	2		47 33 
32	6	7		54 50 49 47 46 45 43 
33	6	5		54 53 50 45 40 
34	6	8		58 55 54 53 51 50 49 43 
35	6	7		56 54 52 50 49 47 45 
36	6	8		56 55 54 52 51 49 48 47 
37	6	8		71 62 60 59 58 56 49 46 
38	6	6		55 54 52 51 49 47 
39	6	6		60 56 54 51 50 49 
40	6	6		62 59 56 55 52 49 
41	6	5		68 56 55 53 51 
42	6	5		68 60 55 54 51 
43	6	8		71 68 67 64 63 60 56 52 
44	6	7		71 68 66 64 59 57 53 
45	6	4		68 58 55 51 
46	6	4		68 67 55 52 
47	6	8		75 71 65 64 62 60 59 57 
48	6	6		75 71 66 60 58 57 
49	6	8		74 72 68 67 65 64 63 61 
50	6	8		76 75 72 71 70 65 64 59 
51	6	5		72 65 64 59 57 
52	6	5		75 72 66 65 57 
53	6	6		80 75 70 65 61 60 
54	6	4		71 65 62 61 
55	6	6		74 73 70 65 64 63 
56	6	6		80 76 73 70 66 65 
57	6	5		80 74 70 69 61 
58	6	4		80 72 65 61 
59	6	7		88 82 80 79 74 69 67 
60	6	7		82 81 77 76 74 73 72 
61	6	8		101 82 81 79 78 77 76 73 
62	6	7		88 82 81 80 74 73 72 
63	6	8		101 90 88 83 81 80 79 75 
64	6	5		90 88 85 82 69 
65	6	4		88 85 78 69 
66	6	4		88 82 78 69 
67	6	5		101 92 78 77 73 
68	6	5		101 92 90 89 77 
69	6	4		101 92 81 77 
70	6	4		101 89 79 77 
71	6	4		92 90 81 77 
72	6	6		101 90 89 85 84 83 
73	6	6		98 90 89 87 85 84 
74	6	3		100 92 78 
75	6	5		98 92 87 85 84 
76	6	4		88 87 85 84 
77	6	4		91 87 84 83 
78	6	4		91 90 84 83 
79	6	8		99 98 97 96 94 92 91 87 
80	6	5		99 98 92 89 86 
81	6	6		100 98 96 94 93 89 
82	6	6		100 99 96 95 94 91 
83	6	5		98 97 96 94 93 
84	6	2		99 86 
85	6	3		100 97 91 
86	6	3		96 94 93 
87	6	3		100 95 93 
88	6	3		98 94 93 
89	6	2		97 95 
90	6	2		99 95 
91	6	1		93 
92	6	1		95 
93	6	1		102 
94	6	1		102 
95	6	1		102 
96	6	1		102 
97	6	1		102 
98	6	1		102 
99	6	1		102 
100	6	1		102 
101	6	1		102 
102	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	1	5	4	2	4	7	14	14	18	
	2	2	4	3	1	4	6	13	13	16	
	3	3	3	3	1	4	5	12	11	15	
	4	6	3	2	1	3	4	12	11	14	
	5	19	2	2	1	3	3	11	10	13	
	6	29	2	2	1	3	2	11	9	11	
3	1	15	4	5	4	3	23	24	25	5	
	2	16	3	4	4	2	20	23	23	5	
	3	17	3	4	4	2	19	23	22	4	
	4	18	2	4	3	2	17	23	22	3	
	5	22	1	4	3	2	15	23	21	3	
	6	27	1	4	3	2	15	23	19	2	
4	1	1	4	5	4	2	9	9	17	21	
	2	6	3	4	4	2	7	7	13	20	
	3	10	3	3	4	2	7	7	12	18	
	4	21	3	3	4	2	5	6	11	15	
	5	22	1	2	4	2	5	5	8	12	
	6	28	1	2	4	2	4	4	7	9	
5	1	4	4	2	2	2	16	19	22	23	
	2	5	4	2	1	2	14	18	22	20	
	3	15	3	2	1	2	12	18	21	18	
	4	18	2	2	1	1	8	17	20	18	
	5	20	1	2	1	1	7	17	20	14	
	6	27	1	2	1	1	3	16	19	13	
6	1	3	4	4	4	4	19	21	9	19	
	2	10	4	3	3	3	17	17	9	19	
	3	15	4	3	2	3	16	16	7	18	
	4	19	4	2	2	3	12	11	7	18	
	5	26	4	1	1	3	11	10	5	17	
	6	30	4	1	1	3	8	7	4	17	
7	1	14	4	4	2	4	14	17	12	11	
	2	16	4	3	2	4	14	17	11	8	
	3	23	4	3	2	4	14	15	9	8	
	4	24	4	2	2	3	13	12	6	5	
	5	26	4	2	2	3	13	7	4	4	
	6	28	4	2	2	2	13	6	3	3	
8	1	1	3	4	1	2	12	22	23	6	
	2	15	3	3	1	2	11	22	23	5	
	3	16	3	3	1	2	9	17	21	4	
	4	20	3	3	1	2	5	15	17	4	
	5	25	3	3	1	2	5	12	16	4	
	6	29	3	3	1	2	3	10	13	3	
9	1	11	2	3	1	2	16	26	21	23	
	2	12	2	2	1	2	16	24	18	20	
	3	13	2	2	1	2	16	21	16	20	
	4	15	2	2	1	2	16	20	13	17	
	5	18	2	1	1	1	15	17	10	13	
	6	26	2	1	1	1	15	17	5	10	
10	1	7	5	3	4	4	2	15	24	17	
	2	11	4	2	4	4	2	14	23	16	
	3	13	4	2	4	4	2	12	23	15	
	4	17	3	2	3	4	2	11	22	13	
	5	20	3	2	3	3	2	10	22	13	
	6	25	3	2	2	3	2	10	21	12	
11	1	2	4	1	4	4	21	26	23	21	
	2	10	4	1	4	3	19	26	23	21	
	3	12	4	1	3	3	16	26	16	21	
	4	16	4	1	3	3	13	26	12	21	
	5	19	4	1	3	3	12	26	9	20	
	6	21	4	1	2	3	9	26	4	20	
12	1	1	5	5	4	1	24	15	21	28	
	2	6	5	4	4	1	24	13	20	26	
	3	7	5	4	4	1	24	10	17	26	
	4	8	5	4	4	1	24	9	14	24	
	5	12	5	3	4	1	24	7	14	20	
	6	21	5	3	4	1	24	6	10	19	
13	1	8	4	4	1	4	26	19	16	24	
	2	9	4	4	1	4	25	17	16	20	
	3	20	4	4	1	4	25	17	14	17	
	4	25	3	4	1	4	22	16	12	16	
	5	27	2	4	1	3	20	15	9	12	
	6	29	2	4	1	3	20	15	7	6	
14	1	3	3	1	3	2	14	27	15	5	
	2	6	3	1	2	1	12	25	15	4	
	3	13	2	1	2	1	10	22	15	4	
	4	14	2	1	2	1	10	16	15	4	
	5	26	2	1	1	1	8	15	15	4	
	6	29	1	1	1	1	7	11	15	4	
15	1	2	4	4	5	2	18	30	18	6	
	2	13	3	4	3	1	15	24	16	5	
	3	19	3	4	3	1	15	20	13	5	
	4	20	3	3	3	1	13	19	12	4	
	5	25	3	3	2	1	9	15	8	4	
	6	26	3	2	1	1	8	8	5	4	
16	1	12	3	5	3	5	27	20	17	28	
	2	15	3	4	2	4	25	19	17	27	
	3	19	3	4	2	4	25	19	17	24	
	4	22	3	4	2	4	25	19	17	23	
	5	25	3	4	2	4	24	19	16	20	
	6	26	3	4	2	4	23	19	16	19	
17	1	16	5	3	4	2	21	16	14	24	
	2	17	4	2	4	2	18	14	13	18	
	3	21	4	2	4	2	14	9	11	18	
	4	22	4	2	4	2	9	7	7	11	
	5	26	4	2	4	2	8	6	5	9	
	6	29	4	2	4	2	5	2	5	5	
18	1	3	4	4	4	4	24	29	28	26	
	2	4	4	3	4	3	22	28	24	26	
	3	7	3	3	3	3	21	27	22	25	
	4	8	3	3	2	3	20	27	21	25	
	5	19	3	3	2	3	20	26	18	25	
	6	25	2	3	1	3	19	25	17	24	
19	1	3	4	1	1	3	22	29	22	13	
	2	8	4	1	1	3	17	28	20	12	
	3	18	4	1	1	3	17	28	15	12	
	4	19	4	1	1	3	12	28	13	9	
	5	24	4	1	1	2	8	28	9	9	
	6	27	4	1	1	2	5	28	7	6	
20	1	2	4	3	4	4	25	21	22	27	
	2	4	4	3	4	4	24	20	17	26	
	3	15	4	2	3	4	21	17	16	25	
	4	16	4	2	2	4	19	16	9	25	
	5	19	4	1	1	4	16	14	7	23	
	6	29	4	1	1	4	15	10	3	23	
21	1	2	4	4	4	3	7	22	25	17	
	2	10	3	4	3	2	6	22	24	16	
	3	17	3	3	2	2	6	21	23	16	
	4	23	2	2	2	1	5	19	23	15	
	5	26	2	2	2	1	5	18	22	15	
	6	27	2	1	1	1	5	18	21	15	
22	1	2	2	4	5	5	27	17	21	20	
	2	4	2	4	3	4	25	16	21	19	
	3	13	2	3	3	4	25	12	17	18	
	4	16	2	2	3	3	23	10	16	17	
	5	20	2	2	2	3	23	7	13	15	
	6	26	2	1	1	3	22	5	12	15	
23	1	1	3	4	2	2	8	23	14	10	
	2	6	3	3	1	2	6	19	13	10	
	3	11	2	3	1	2	6	17	11	10	
	4	12	2	3	1	2	5	14	11	10	
	5	18	1	2	1	1	4	13	8	10	
	6	22	1	2	1	1	4	12	8	10	
24	1	3	4	3	1	4	30	28	14	20	
	2	8	4	3	1	3	28	27	12	17	
	3	9	3	3	1	3	28	25	11	15	
	4	15	3	3	1	3	27	23	9	13	
	5	22	3	3	1	1	25	19	8	11	
	6	24	2	3	1	1	25	17	6	10	
25	1	7	2	4	2	4	25	24	11	11	
	2	9	2	3	1	4	22	19	10	9	
	3	10	2	3	1	4	18	18	10	7	
	4	12	1	3	1	4	17	16	9	7	
	5	13	1	1	1	4	15	8	8	6	
	6	21	1	1	1	4	12	5	8	5	
26	1	8	4	3	4	3	26	30	25	27	
	2	15	3	3	3	2	25	27	25	27	
	3	16	3	3	3	2	24	24	24	27	
	4	20	2	3	2	2	24	21	23	26	
	5	29	2	3	2	2	24	19	22	26	
	6	30	1	3	1	2	23	17	21	26	
27	1	8	3	5	5	2	29	8	27	26	
	2	14	3	3	5	2	29	8	23	26	
	3	15	3	3	5	2	29	7	17	22	
	4	16	2	3	5	2	28	6	15	18	
	5	26	2	1	5	1	27	4	11	10	
	6	29	1	1	5	1	27	3	5	6	
28	1	11	4	5	5	4	9	21	11	11	
	2	12	4	4	3	3	9	20	11	9	
	3	14	4	4	3	3	8	20	10	8	
	4	16	4	4	3	2	8	19	10	5	
	5	25	4	3	2	1	7	18	8	5	
	6	28	4	3	1	1	7	18	8	3	
29	1	1	5	4	1	3	29	13	22	14	
	2	5	4	3	1	2	21	12	17	12	
	3	14	4	3	1	2	20	11	15	10	
	4	16	4	3	1	2	17	10	13	10	
	5	20	4	3	1	2	9	8	11	8	
	6	29	4	3	1	2	6	7	6	6	
30	1	9	3	3	4	5	21	15	9	24	
	2	16	3	2	4	4	20	10	8	20	
	3	19	3	2	4	4	17	10	8	16	
	4	20	2	2	3	4	16	8	7	11	
	5	22	2	1	2	3	15	5	7	11	
	6	28	2	1	2	3	13	4	6	4	
31	1	12	2	3	3	1	21	11	21	22	
	2	15	2	3	2	1	17	11	19	20	
	3	17	2	3	2	1	17	11	18	18	
	4	18	1	3	2	1	12	10	17	18	
	5	22	1	3	2	1	10	10	17	16	
	6	23	1	3	2	1	7	9	16	15	
32	1	1	3	3	5	4	19	24	25	12	
	2	3	3	3	4	3	16	23	23	10	
	3	4	3	3	4	3	14	19	22	9	
	4	5	2	3	4	3	13	11	21	8	
	5	9	2	3	4	3	11	10	21	5	
	6	10	2	3	4	3	6	5	20	4	
33	1	2	2	1	3	3	23	16	4	24	
	2	3	2	1	3	3	21	16	4	23	
	3	8	2	1	3	3	19	15	4	21	
	4	9	1	1	3	2	19	12	4	17	
	5	10	1	1	3	1	17	12	4	14	
	6	28	1	1	3	1	15	10	4	12	
34	1	6	4	2	5	3	14	14	17	29	
	2	9	4	2	5	3	13	11	16	29	
	3	15	4	2	5	3	10	10	13	29	
	4	19	3	2	5	3	6	9	13	29	
	5	21	3	1	5	3	6	5	11	29	
	6	23	2	1	5	3	1	3	9	29	
35	1	4	4	3	2	2	22	13	20	16	
	2	16	4	2	1	2	18	12	20	16	
	3	20	4	2	1	2	13	12	19	14	
	4	22	3	2	1	2	9	10	17	12	
	5	24	3	1	1	2	8	10	16	10	
	6	28	3	1	1	2	4	9	16	10	
36	1	5	5	5	4	3	25	20	23	22	
	2	11	4	4	3	2	20	18	22	22	
	3	18	3	4	3	2	15	17	22	22	
	4	22	2	3	2	1	13	17	22	21	
	5	25	2	3	2	1	9	16	21	21	
	6	26	1	3	1	1	3	15	20	20	
37	1	1	5	3	3	5	13	27	5	23	
	2	4	4	2	3	4	12	25	5	21	
	3	13	4	2	3	4	9	25	3	18	
	4	14	3	2	2	3	9	23	3	14	
	5	20	3	2	2	3	7	22	1	11	
	6	25	3	2	2	2	5	22	1	8	
38	1	2	3	2	5	1	7	13	25	30	
	2	5	2	2	4	1	7	12	23	27	
	3	6	2	2	4	1	7	12	21	24	
	4	9	2	2	4	1	6	10	19	21	
	5	12	1	2	3	1	5	7	15	15	
	6	20	1	2	3	1	5	7	13	13	
39	1	2	4	5	1	4	23	30	22	21	
	2	3	4	5	1	4	21	28	21	20	
	3	4	3	5	1	4	19	27	20	20	
	4	11	3	5	1	4	14	27	19	19	
	5	13	3	5	1	3	10	26	18	19	
	6	25	2	5	1	3	8	25	17	18	
40	1	9	4	3	1	1	23	12	17	17	
	2	15	4	3	1	1	19	12	15	15	
	3	18	4	3	1	1	16	11	15	12	
	4	24	3	2	1	1	14	11	14	8	
	5	29	3	2	1	1	11	11	11	3	
	6	30	2	1	1	1	5	10	10	1	
41	1	4	2	3	5	4	27	24	15	23	
	2	7	2	3	4	3	25	21	15	22	
	3	13	2	3	3	3	25	20	12	21	
	4	16	2	3	2	3	24	18	9	21	
	5	22	2	3	1	3	24	16	7	20	
	6	23	2	3	1	3	23	14	5	19	
42	1	8	3	3	1	5	14	7	10	26	
	2	9	3	2	1	4	12	6	10	24	
	3	12	3	2	1	4	12	4	8	21	
	4	19	3	2	1	4	9	3	7	18	
	5	24	3	2	1	4	6	3	7	16	
	6	30	3	2	1	4	4	1	6	14	
43	1	3	2	1	1	3	16	28	21	7	
	2	9	1	1	1	2	16	27	19	7	
	3	10	1	1	1	2	15	27	15	6	
	4	11	1	1	1	2	15	24	14	4	
	5	12	1	1	1	1	13	22	12	3	
	6	17	1	1	1	1	13	21	9	2	
44	1	1	3	1	5	4	19	24	20	29	
	2	4	3	1	4	3	17	20	19	26	
	3	5	3	1	4	3	13	20	18	24	
	4	13	3	1	4	2	8	18	18	21	
	5	20	2	1	4	1	6	17	17	20	
	6	25	2	1	4	1	4	15	17	18	
45	1	2	4	1	2	2	26	28	25	20	
	2	4	4	1	2	2	26	24	24	20	
	3	5	4	1	2	2	24	23	20	20	
	4	6	3	1	2	1	24	21	15	20	
	5	16	2	1	2	1	23	20	13	20	
	6	27	2	1	2	1	21	18	9	20	
46	1	1	5	4	4	4	23	27	27	14	
	2	7	4	3	4	4	21	24	26	12	
	3	9	4	3	4	4	15	23	25	9	
	4	14	3	3	3	4	11	23	20	9	
	5	22	3	2	3	4	6	21	20	6	
	6	23	3	2	3	4	2	21	17	2	
47	1	6	5	4	1	3	28	6	28	16	
	2	7	4	4	1	3	26	6	26	15	
	3	19	4	3	1	3	26	6	26	14	
	4	21	4	3	1	2	24	6	24	13	
	5	22	3	1	1	1	22	6	23	12	
	6	23	3	1	1	1	22	6	23	10	
48	1	1	1	4	4	4	20	9	21	24	
	2	11	1	4	3	4	20	7	17	24	
	3	12	1	3	2	4	19	6	16	20	
	4	16	1	3	2	4	19	6	13	14	
	5	18	1	3	2	3	19	5	7	8	
	6	19	1	2	1	3	18	4	4	8	
49	1	2	3	1	5	1	20	13	24	24	
	2	3	3	1	5	1	20	13	24	23	
	3	9	3	1	5	1	20	12	23	23	
	4	12	3	1	5	1	20	11	21	22	
	5	13	3	1	5	1	20	10	19	22	
	6	17	3	1	5	1	20	9	17	21	
50	1	4	4	4	3	2	22	29	27	10	
	2	12	4	4	3	2	21	26	25	10	
	3	13	4	4	3	2	21	20	25	10	
	4	17	4	3	2	2	21	18	23	10	
	5	18	4	3	2	2	21	10	22	9	
	6	24	4	3	2	2	21	9	21	9	
51	1	1	4	2	2	5	16	24	18	10	
	2	6	4	2	2	4	15	22	16	9	
	3	8	4	2	2	4	15	20	12	8	
	4	17	3	1	2	3	12	18	11	7	
	5	25	2	1	2	3	12	14	8	7	
	6	27	2	1	2	3	10	11	7	6	
52	1	1	5	4	1	5	26	26	10	25	
	2	6	5	4	1	4	23	19	9	24	
	3	8	5	3	1	3	22	16	8	24	
	4	19	5	3	1	3	21	11	5	24	
	5	20	5	2	1	2	19	8	4	23	
	6	30	5	1	1	1	17	5	2	23	
53	1	4	4	3	4	1	15	26	13	24	
	2	5	4	2	3	1	15	26	11	17	
	3	8	3	2	3	1	13	23	11	16	
	4	14	3	2	3	1	12	23	9	13	
	5	16	3	1	3	1	11	19	5	6	
	6	27	2	1	3	1	11	19	4	2	
54	1	12	4	2	5	5	17	22	4	13	
	2	15	3	2	4	5	16	19	4	10	
	3	21	2	2	4	5	16	18	4	10	
	4	25	2	2	3	5	15	16	3	8	
	5	26	1	2	2	5	15	15	3	5	
	6	27	1	2	2	5	15	13	2	5	
55	1	12	4	1	5	3	27	23	11	28	
	2	14	3	1	4	3	20	23	11	26	
	3	15	2	1	4	3	15	19	9	22	
	4	17	2	1	4	3	14	17	9	19	
	5	19	1	1	4	2	7	14	8	14	
	6	21	1	1	4	2	7	10	7	12	
56	1	8	4	4	4	3	26	26	13	18	
	2	9	4	4	3	2	19	25	11	17	
	3	11	4	4	3	2	17	24	11	16	
	4	18	3	4	3	1	11	24	10	15	
	5	21	3	4	2	1	7	22	8	14	
	6	25	2	4	2	1	7	22	7	13	
57	1	11	4	3	3	4	18	18	8	26	
	2	16	4	3	3	4	17	17	8	23	
	3	17	3	3	3	4	16	15	8	22	
	4	23	3	3	3	3	15	13	7	19	
	5	29	3	3	3	3	14	12	7	15	
	6	30	2	3	3	3	11	10	7	9	
58	1	1	4	2	2	2	8	26	24	27	
	2	3	4	1	2	2	6	25	24	27	
	3	16	4	1	2	2	4	20	24	27	
	4	17	3	1	2	2	3	11	24	27	
	5	21	2	1	2	2	2	9	24	27	
	6	22	2	1	2	2	2	3	24	27	
59	1	10	4	3	1	5	17	17	7	27	
	2	11	3	3	1	5	15	17	7	25	
	3	12	3	3	1	5	14	14	6	25	
	4	13	3	2	1	5	14	14	6	24	
	5	22	3	2	1	5	12	11	5	22	
	6	29	3	1	1	5	12	10	5	21	
60	1	2	3	4	4	3	27	16	7	12	
	2	5	3	4	4	3	25	14	6	10	
	3	13	2	4	4	2	24	13	5	8	
	4	15	2	4	3	2	22	11	4	6	
	5	22	1	4	3	2	21	10	4	6	
	6	24	1	4	3	1	21	7	3	5	
61	1	4	4	5	2	5	16	21	17	18	
	2	5	3	3	2	5	13	21	12	12	
	3	7	3	3	2	5	12	21	10	11	
	4	13	2	3	2	5	10	21	6	8	
	5	14	2	2	1	5	9	21	3	5	
	6	16	1	1	1	5	8	21	2	1	
62	1	4	1	3	3	4	23	15	23	22	
	2	7	1	2	2	4	17	13	20	21	
	3	15	1	2	2	4	15	13	16	21	
	4	17	1	2	2	4	14	12	14	21	
	5	18	1	2	1	4	8	11	10	21	
	6	23	1	2	1	4	6	10	5	21	
63	1	1	3	4	5	4	26	25	9	22	
	2	5	3	4	4	3	24	24	9	19	
	3	7	2	4	4	3	20	21	8	13	
	4	18	2	4	4	3	18	12	8	12	
	5	20	2	4	4	2	15	9	7	6	
	6	22	1	4	4	2	15	3	6	5	
64	1	4	4	5	5	4	28	23	9	21	
	2	5	4	5	4	4	26	19	8	20	
	3	17	4	5	4	4	26	19	7	20	
	4	20	4	5	3	4	25	17	6	20	
	5	21	4	5	3	3	23	13	5	20	
	6	22	4	5	2	3	22	12	5	20	
65	1	4	3	3	1	5	24	13	25	19	
	2	6	2	3	1	3	22	11	22	15	
	3	8	2	3	1	3	21	11	20	14	
	4	11	1	3	1	3	19	10	18	9	
	5	15	1	3	1	1	19	8	14	7	
	6	20	1	3	1	1	17	8	14	6	
66	1	1	2	5	1	4	25	27	24	24	
	2	9	2	5	1	4	23	26	20	24	
	3	16	2	5	1	4	17	26	15	23	
	4	19	2	5	1	3	13	26	13	22	
	5	29	1	5	1	2	11	26	9	20	
	6	30	1	5	1	2	6	26	8	20	
67	1	1	3	3	1	3	23	24	16	13	
	2	10	3	3	1	3	19	22	15	11	
	3	12	3	3	1	3	15	20	14	9	
	4	13	3	3	1	3	13	14	13	9	
	5	15	3	3	1	3	9	11	11	7	
	6	29	3	3	1	3	7	4	10	7	
68	1	4	5	5	2	3	27	26	14	27	
	2	19	4	4	2	3	25	24	11	24	
	3	22	4	3	2	3	22	22	7	21	
	4	23	4	3	2	3	20	18	6	18	
	5	24	4	2	1	3	18	14	5	14	
	6	27	4	2	1	3	17	14	2	9	
69	1	5	4	2	3	2	5	28	17	22	
	2	8	3	1	3	2	4	27	17	21	
	3	14	3	1	3	2	4	27	16	21	
	4	25	3	1	3	1	4	26	15	20	
	5	27	2	1	3	1	4	25	14	20	
	6	30	1	1	3	1	4	24	14	20	
70	1	3	4	4	5	4	16	6	26	16	
	2	4	4	3	4	3	15	5	25	12	
	3	8	4	3	4	3	13	5	20	10	
	4	9	4	2	3	3	11	4	18	6	
	5	10	4	2	2	2	9	3	15	3	
	6	18	4	1	2	1	8	3	12	1	
71	1	2	3	2	4	4	30	29	10	20	
	2	5	3	1	3	4	26	26	9	16	
	3	7	3	1	3	4	24	26	7	16	
	4	8	2	1	2	4	23	24	7	14	
	5	9	2	1	2	4	21	23	5	12	
	6	29	2	1	2	4	19	21	5	10	
72	1	2	5	3	2	1	19	25	13	19	
	2	6	5	3	2	1	18	23	13	15	
	3	9	5	2	2	1	14	21	13	11	
	4	11	5	2	1	1	9	17	13	9	
	5	25	5	2	1	1	8	14	13	4	
	6	27	5	1	1	1	6	12	13	2	
73	1	22	4	5	5	4	22	5	10	19	
	2	23	3	4	4	3	21	4	8	15	
	3	24	2	4	4	3	17	4	7	15	
	4	25	2	3	4	3	12	4	7	14	
	5	28	1	2	4	3	10	4	5	11	
	6	30	1	2	4	3	5	4	4	9	
74	1	7	4	5	5	3	13	28	29	24	
	2	11	4	4	4	3	12	21	29	22	
	3	13	3	3	4	3	12	18	29	21	
	4	17	3	3	4	3	12	15	29	20	
	5	18	3	3	4	3	12	6	29	20	
	6	23	2	2	4	3	12	4	29	18	
75	1	2	2	5	3	1	22	18	29	28	
	2	6	2	5	3	1	20	18	25	25	
	3	9	2	5	3	1	19	17	23	22	
	4	13	2	5	2	1	16	17	20	17	
	5	24	1	5	2	1	13	17	18	16	
	6	26	1	5	1	1	11	16	14	12	
76	1	1	4	4	5	4	21	26	30	25	
	2	10	3	3	4	3	18	19	29	21	
	3	17	3	3	4	2	18	15	27	19	
	4	23	3	2	4	2	16	14	26	13	
	5	27	2	2	3	2	13	6	25	13	
	6	29	1	2	3	1	11	4	24	9	
77	1	4	2	2	2	4	19	25	23	22	
	2	6	2	1	1	4	17	25	22	20	
	3	7	2	1	1	3	13	25	20	20	
	4	20	2	1	1	3	9	25	20	19	
	5	22	1	1	1	2	7	25	19	18	
	6	24	1	1	1	1	2	25	18	16	
78	1	4	3	2	4	4	17	10	22	20	
	2	11	2	2	3	3	16	7	22	20	
	3	12	2	2	2	2	11	6	22	19	
	4	13	2	1	2	2	10	5	22	19	
	5	26	1	1	2	2	7	4	22	19	
	6	27	1	1	1	1	4	4	22	18	
79	1	3	4	4	4	2	25	25	3	29	
	2	7	4	4	4	1	22	25	2	27	
	3	11	4	4	4	1	21	16	2	26	
	4	17	3	4	4	1	17	13	2	25	
	5	26	3	3	4	1	16	8	1	25	
	6	28	2	3	4	1	11	5	1	24	
80	1	1	4	1	5	5	25	11	28	20	
	2	2	4	1	5	4	24	9	26	18	
	3	3	4	1	5	4	22	8	25	17	
	4	6	4	1	5	4	22	5	24	17	
	5	18	4	1	5	4	20	4	22	16	
	6	20	4	1	5	4	20	3	22	15	
81	1	2	5	5	4	4	14	20	19	28	
	2	11	5	3	4	4	14	19	18	27	
	3	12	5	3	4	4	14	19	18	25	
	4	19	5	3	3	4	14	18	18	24	
	5	22	5	2	3	3	14	18	18	21	
	6	30	5	1	3	3	14	18	18	20	
82	1	9	5	4	2	5	10	29	21	27	
	2	11	4	3	1	4	8	23	19	26	
	3	15	3	3	1	4	6	20	19	24	
	4	16	3	3	1	4	4	18	17	24	
	5	17	2	2	1	3	3	13	17	22	
	6	24	2	2	1	3	1	10	16	22	
83	1	2	1	3	4	4	14	25	12	17	
	2	4	1	2	4	3	14	21	12	16	
	3	5	1	2	4	2	14	20	12	13	
	4	9	1	2	4	2	14	16	12	9	
	5	12	1	1	4	2	13	14	12	6	
	6	25	1	1	4	1	13	9	12	5	
84	1	18	5	4	2	2	25	19	17	16	
	2	19	3	3	1	2	24	17	15	15	
	3	20	3	2	1	2	23	17	11	13	
	4	21	2	2	1	1	23	16	10	10	
	5	22	2	2	1	1	23	15	8	10	
	6	24	1	1	1	1	22	13	6	6	
85	1	9	2	2	5	5	24	20	13	8	
	2	12	1	1	4	4	23	17	11	7	
	3	14	1	1	4	4	18	15	10	7	
	4	16	1	1	4	3	15	15	6	6	
	5	25	1	1	4	3	11	12	3	6	
	6	30	1	1	4	2	10	10	3	6	
86	1	1	4	4	4	4	24	23	16	29	
	2	5	4	4	3	4	20	20	14	29	
	3	8	3	4	3	3	19	16	12	29	
	4	13	3	4	2	2	14	14	8	28	
	5	15	2	4	2	1	13	13	7	28	
	6	27	2	4	1	1	8	9	6	28	
87	1	3	5	4	2	3	26	22	26	25	
	2	4	4	3	2	3	25	18	26	24	
	3	7	3	3	2	3	25	14	24	24	
	4	10	3	2	2	3	24	12	21	23	
	5	23	3	2	1	2	23	7	21	21	
	6	26	2	1	1	2	22	4	19	21	
88	1	6	3	2	5	5	23	19	22	16	
	2	17	3	2	3	4	18	13	19	16	
	3	18	3	2	3	4	17	13	19	16	
	4	20	3	2	2	4	12	9	14	16	
	5	21	3	2	1	4	10	6	12	16	
	6	29	3	2	1	4	3	4	10	16	
89	1	6	4	4	4	5	21	22	18	1	
	2	7	4	3	4	5	19	21	17	1	
	3	8	4	3	4	5	15	20	11	1	
	4	15	4	2	3	5	13	20	8	1	
	5	25	4	2	3	5	10	18	5	1	
	6	28	4	2	2	5	7	18	2	1	
90	1	1	4	3	4	5	21	11	3	17	
	2	2	4	2	3	4	20	10	3	16	
	3	13	4	2	2	4	18	8	3	15	
	4	20	4	2	2	4	17	7	2	14	
	5	24	4	1	2	4	16	4	1	12	
	6	27	4	1	1	4	14	3	1	9	
91	1	3	4	1	1	5	16	17	28	12	
	2	5	4	1	1	5	16	17	27	11	
	3	9	3	1	1	5	16	14	24	8	
	4	13	2	1	1	5	15	13	23	6	
	5	16	1	1	1	5	15	11	20	5	
	6	22	1	1	1	5	15	10	20	2	
92	1	2	4	3	2	3	20	27	26	26	
	2	8	3	2	2	3	19	27	25	24	
	3	11	3	2	2	3	19	26	25	22	
	4	12	3	2	2	3	19	24	24	18	
	5	18	3	2	2	3	18	24	24	14	
	6	26	3	2	2	3	18	23	23	12	
93	1	8	4	3	3	5	26	8	10	7	
	2	13	3	3	2	4	23	8	9	6	
	3	14	3	3	2	4	18	8	9	6	
	4	15	2	2	2	4	13	8	7	6	
	5	18	2	2	2	4	12	8	6	6	
	6	20	1	1	2	4	7	8	6	6	
94	1	1	1	4	1	3	21	30	19	25	
	2	2	1	3	1	2	16	29	14	24	
	3	3	1	3	1	2	13	28	11	24	
	4	4	1	3	1	2	7	28	11	24	
	5	6	1	3	1	2	7	28	9	24	
	6	27	1	3	1	2	1	27	4	24	
95	1	10	2	2	2	3	24	23	20	22	
	2	23	2	2	2	3	18	23	20	20	
	3	24	2	2	2	3	17	19	20	20	
	4	25	2	2	2	3	13	16	20	20	
	5	26	2	2	2	3	8	9	20	19	
	6	27	2	2	2	3	5	8	20	18	
96	1	5	4	5	3	3	22	3	17	25	
	2	8	4	5	3	3	22	3	13	25	
	3	12	4	5	3	2	16	3	12	24	
	4	19	3	5	3	2	9	3	10	22	
	5	20	3	5	3	1	7	2	7	22	
	6	23	3	5	3	1	4	2	6	21	
97	1	1	2	2	4	3	13	25	28	15	
	2	6	2	1	4	3	12	25	23	14	
	3	15	2	1	3	3	9	20	22	12	
	4	16	2	1	3	3	8	18	16	11	
	5	20	1	1	2	3	5	14	16	10	
	6	28	1	1	1	3	2	11	11	9	
98	1	13	1	5	5	1	19	2	13	14	
	2	14	1	4	4	1	16	2	12	14	
	3	17	1	4	4	1	11	2	11	14	
	4	20	1	3	4	1	11	2	10	14	
	5	26	1	3	3	1	7	2	8	14	
	6	27	1	3	3	1	2	2	7	14	
99	1	3	3	3	4	3	13	23	27	8	
	2	6	3	3	3	2	13	18	26	6	
	3	12	2	3	3	2	13	15	24	6	
	4	14	2	3	2	2	12	11	23	6	
	5	17	1	3	2	2	12	8	21	5	
	6	30	1	3	1	2	12	6	21	4	
100	1	2	2	4	1	2	20	28	10	15	
	2	5	2	4	1	1	18	23	8	14	
	3	6	2	4	1	1	17	21	7	14	
	4	8	2	4	1	1	15	17	6	13	
	5	16	2	4	1	1	14	10	4	12	
	6	20	2	4	1	1	13	6	3	12	
101	1	7	2	4	4	2	16	17	23	16	
	2	12	2	4	4	2	14	17	21	13	
	3	18	2	4	4	2	13	14	19	13	
	4	20	2	4	4	2	12	12	17	10	
	5	24	1	4	3	2	12	11	16	8	
	6	27	1	4	3	2	10	8	14	3	
102	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	21	21	19	18	1306	1356	1257	1376

************************************************************************
