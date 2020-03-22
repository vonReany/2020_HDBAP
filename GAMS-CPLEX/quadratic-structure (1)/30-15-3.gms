SETS
V        vessels                                 /v1*v30/
B        berths                                  /b1*b15/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b4,b11/
CB2(B)   not assigned corner berths              /b5,b12/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 4, v2 10, v3 2, v4 6, v5 8, v6 5, v7 6, v8 6, v9 9, v10 9, v11 2, v12 7, v13 8, v14 5, v15 5, v16 10, v17 6, v18 3, v19 2, v20 10, v21 7, v22 5, v23 5, v24 6, v25 6, v26 7, v27 10, v28 8, v29 9, v30 4/
PO(V)    processing time of vessel v             /v1 2, v2 4, v3 3, v4 2, v5 7, v6 10, v7 10, v8 9, v9 10, v10 4, v11 3, v12 4, v13 8, v14 3, v15 4, v16 6, v17 9, v18 5, v19 9, v20 6, v21 5, v22 5, v23 2, v24 6, v25 3, v26 8, v27 7, v28 10, v29 10, v30 2/
LEN(V)   length of vessel v                      /v1 1, v2 2, v3 2, v4 1, v5 1, v6 2, v7 2, v8 1, v9 3, v10 1, v11 1, v12 2, v13 3, v14 1, v15 2, v16 1, v17 1, v18 1, v19 2, v20 2, v21 2, v22 2, v23 2, v24 2, v25 1, v26 3, v27 3, v28 1, v29 3, v30 3/
T1(V)    expected time to arrival of vessel v    /v1 22, v2 4, v3 16, v4 7, v5 23, v6 22, v7 16, v8 10, v9 23, v10 15, v11 16, v12 18, v13 30, v14 3, v15 1, v16 16, v17 1, v18 6, v19 21, v20 14, v21 8, v22 23, v23 12, v24 28, v25 14, v26 6, v27 23, v28 16, v29 11, v30 15/
T2(V)    expected time to departure of vessel v  /v1 26, v2 12, v3 22, v4 11, v5 37, v6 42, v7 36, v8 28, v9 43, v10 23, v11 22, v12 26, v13 46, v14 9, v15 9, v16 28, v17 19, v18 16, v19 39, v20 26, v21 18, v22 33, v23 16, v24 40, v25 20, v26 22, v27 37, v28 36, v29 31, v30 19/
S(B)     available start time of berth b         /b1 1, b2 3, b3 2, b4 8, b5 13, b6 15, b7 4, b8 4, b9 1, b10 5, b11 13, b12 2, b13 1, b14 1, b15 1/
E(B)     available end time of berth b           /b1 36, b2 43, b3 41, b4 40, b5 40, b6 50, b7 49, b8 43, b9 50, b10 41, b11 40, b12 40, b13 38, b14 43, b15 50/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15
v1         26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v2         12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v3         22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v4         11        11        11        11        11        11        11        11        11        11        11        11        11        11        11
v5         36        37        37        37        37        37        37        37        37        37        37        37        37        37        37
v6         36        42        41        40        40        42        42        42        42        41        40        40        38        42        42
v7         36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v8         28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v9         36        43        41        40        40        43        43        43        43        41        40        40        38        43        43
v10        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v11        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v12        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v13        36        43        41        40        40        46        46        43        46        41        40        40        38        43        46
v14        9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v15        9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v16        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v17        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v18        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v19        36        39        39        39        39        39        39        39        39        39        39        39        38        39        39
v20        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v21        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v22        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v23        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v24        36        40        40        40        40        40        40        40        40        40        40        40        38        40        40
v25        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v26        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v27        36        37        37        37        37        37        37        37        37        37        37        37        37        37        37
v28        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v29        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v30        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15
v1         22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v2         4         4         4         8         13        15        4         4         4         5         13        4         4         4         4
v3         16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v4         7         7         7         8         13        15        7         7         7         7         13        7         7         7         7
v5         23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v6         22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v7         16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v8         10        10        10        10        13        15        10        10        10        10        13        10        10        10        10
v9         23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v10        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v11        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v12        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v13        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v14        3         3         3         8         13        15        4         4         3         5         13        3         3         3         3
v15        1         3         2         8         13        15        4         4         1         5         13        2         1         1         1
v16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v17        1         3         2         8         13        15        4         4         1         5         13        2         1         1         1
v18        6         6         6         8         13        15        6         6         6         6         13        6         6         6         6
v19        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v20        14        14        14        14        14        15        14        14        14        14        14        14        14        14        14
v21        8         8         8         8         13        15        8         8         8         8         13        8         8         8         8
v22        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v23        12        12        12        12        13        15        12        12        12        12        13        12        12        12        12
v24        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v25        14        14        14        14        14        15        14        14        14        14        14        14        14        14        14
v26        6         6         6         8         13        15        6         6         6         6         13        6         6         6         6
v27        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v28        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v29        11        11        11        11        13        15        11        11        11        11        13        11        11        11        11
v30        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15;
BINARY VARIABLES
X(V,B,T);
VARIABLES
Z        objective function value;
EQUATIONS
CONST1
CONST2
CONST3
CONST4
CONST5
OBJECTIVE;

CONST1(V)..                                                                                                                                      SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), X(V,B,T))) =e= LEN(V);
CONST2(B,T) $ (ORD(T)>=S(B) AND ORD(T)<=(E(B)-1))..                                                                                              SUM( V, SUM( TO $ (ORD(TO)>=T1(V) AND ORD(TO)>=S(B) AND ORD(TO)>=(ORD(T)+1-PO(V)) AND ORD(TO)<=ORD(T) AND ORD(TO)<=(T2(V)-PO(V)) AND ORD(TO)<=(E(B)-PO(V))), X(V,B,TO))) =l= 1;
CONST3(V,T,B1,B2) $ (LEN(V)>=2 AND ORD(T)>=L(V,B1) AND ORD(T)<=(U(V,B1)-PO(V)) AND ORD(T)>=L(V,B2) AND ORD(T)<=(U(V,B2)-PO(V)))..                (X(V,B1,T) + X(V,B2,T) - 2)*999 + (ORD(B1) - ORD(B2)) =l= LEN(V) - 1;
CONST4(V,B1,B2,TT1,TT2) $ (LEN(V)>=2 AND ORD(TT1)>=L(V,B1) AND ORD(TT1)<=(U(V,B1)-PO(V)) AND ORD(TT2)>=L(V,B2) AND ORD(TT2)<=(U(V,B2)-PO(V)))..  (X(V,B1,TT1) + X(V,B2,TT2) - 2)*999 + (ORD(TT1) - ORD(TT2)) =l= 0;
CONST5(V,CB,CB2,T) $ (LEN(V)>=2 AND ORD(T)>=L(V,CB) AND ORD(T)<=(U(V,CB)-PO(V)) AND ORD(CB)=ORD(CB2))..                                        (X(V,CB,T)+X(V,CB2,T)) =l= 1;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;

