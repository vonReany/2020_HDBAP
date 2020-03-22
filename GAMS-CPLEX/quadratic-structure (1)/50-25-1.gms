SETS
V        vessels                                 /v1*v50/
B        berths                                  /b1*b25/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b8,b17/
CB2(B)   not assigned corner berths              /b9,b18/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 4, v2 7, v3 5, v4 10, v5 9, v6 6, v7 8, v8 4, v9 2, v10 6, v11 3, v12 2, v13 2, v14 2, v15 4, v16 7, v17 8, v18 6, v19 7, v20 10, v21 4, v22 7, v23 10, v24 8, v25 9, v26 10, v27 6, v28 7, v29 4, v30 5, v31 5, v32 6, v33 5, v34 9, v35 7, v36 2, v37 10, v38 4, v39 3, v40 2, v41 5, v42 5, v43 10, v44 5, v45 7, v46 4, v47 10, v48 6, v49 8, v50 5/
PO(V)    processing time of vessel v             /v1 9, v2 3, v3 5, v4 5, v5 3, v6 10, v7 7, v8 9, v9 5, v10 8, v11 6, v12 2, v13 2, v14 7, v15 3, v16 9, v17 2, v18 10, v19 10, v20 5, v21 7, v22 5, v23 5, v24 6, v25 8, v26 10, v27 10, v28 3, v29 10, v30 9, v31 9, v32 3, v33 7, v34 5, v35 8, v36 3, v37 4, v38 5, v39 8, v40 3, v41 3, v42 4, v43 5, v44 9, v45 6, v46 9, v47 2, v48 6, v49 4, v50 4/
LEN(V)   length of vessel v                      /v1 2, v2 1, v3 1, v4 3, v5 1, v6 3, v7 1, v8 2, v9 1, v10 3, v11 1, v12 2, v13 2, v14 2, v15 1, v16 1, v17 1, v18 1, v19 1, v20 2, v21 2, v22 2, v23 1, v24 2, v25 2, v26 3, v27 2, v28 1, v29 2, v30 2, v31 1, v32 3, v33 1, v34 2, v35 3, v36 1, v37 1, v38 3, v39 2, v40 2, v41 1, v42 2, v43 1, v44 1, v45 2, v46 3, v47 3, v48 2, v49 2, v50 3/
T1(V)    expected time to arrival of vessel v    /v1 3, v2 8, v3 9, v4 16, v5 24, v6 7, v7 18, v8 20, v9 19, v10 29, v11 19, v12 22, v13 13, v14 24, v15 14, v16 17, v17 11, v18 23, v19 29, v20 25, v21 15, v22 21, v23 5, v24 1, v25 30, v26 20, v27 20, v28 15, v29 5, v30 20, v31 19, v32 8, v33 29, v34 12, v35 30, v36 18, v37 11, v38 14, v39 7, v40 20, v41 9, v42 12, v43 13, v44 13, v45 29, v46 18, v47 16, v48 13, v49 8, v50 20/
T2(V)    expected time to departure of vessel v  /v1 21, v2 14, v3 19, v4 26, v5 30, v6 27, v7 32, v8 38, v9 29, v10 45, v11 31, v12 26, v13 17, v14 38, v15 20, v16 35, v17 15, v18 43, v19 49, v20 35, v21 29, v22 31, v23 15, v24 13, v25 46, v26 40, v27 40, v28 21, v29 25, v30 38, v31 37, v32 14, v33 43, v34 22, v35 46, v36 24, v37 19, v38 24, v39 23, v40 26, v41 15, v42 20, v43 23, v44 31, v45 41, v46 36, v47 20, v48 25, v49 16, v50 28/
S(B)     available start time of berth b         /b1 5, b2 9, b3 9, b4 2, b5 1, b6 1, b7 2, b8 11, b9 13, b10 12, b11 10, b12 13, b13 12, b14 7, b15 4, b16 3, b17 2, b18 5, b19 9, b20 15, b21 10, b22 7, b23 6, b24 12, b25 3/
E(B)     available end time of berth b           /b1 37, b2 44, b3 47, b4 43, b5 37, b6 44, b7 36, b8 38, b9 50, b10 49, b11 41, b12 48, b13 49, b14 35, b15 50, b16 44, b17 39, b18 47, b19 35, b20 45, b21 40, b22 44, b23 37, b24 41, b25 40/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v2         14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v3         19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v4         26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v5         30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v6         27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v7         32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v8         37        38        38        38        37        38        36        38        38        38        38        38        38        35        38        38        38        38        35        38        38        38        37        38        38
v9         29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v10        37        44        45        43        37        44        36        38        45        45        41        45        45        35        45        44        39        45        35        45        40        44        37        41        40
v11        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v12        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v13        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v14        37        38        38        38        37        38        36        38        38        38        38        38        38        35        38        38        38        38        35        38        38        38        37        38        38
v15        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v16        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v17        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v18        37        43        43        43        37        43        36        38        43        43        41        43        43        35        43        43        39        43        35        43        40        43        37        41        40
v19        37        44        47        43        37        44        36        38        49        49        41        48        49        35        49        44        39        47        35        45        40        44        37        41        40
v20        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v21        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v22        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v23        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v24        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v25        37        44        46        43        37        44        36        38        46        46        41        46        46        35        46        44        39        46        35        45        40        44        37        41        40
v26        37        40        40        40        37        40        36        38        40        40        40        40        40        35        40        40        39        40        35        40        40        40        37        40        40
v27        37        40        40        40        37        40        36        38        40        40        40        40        40        35        40        40        39        40        35        40        40        40        37        40        40
v28        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v29        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v30        37        38        38        38        37        38        36        38        38        38        38        38        38        35        38        38        38        38        35        38        38        38        37        38        38
v31        37        37        37        37        37        37        36        37        37        37        37        37        37        35        37        37        37        37        35        37        37        37        37        37        37
v32        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v33        37        43        43        43        37        43        36        38        43        43        41        43        43        35        43        43        39        43        35        43        40        43        37        41        40
v34        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v35        37        44        46        43        37        44        36        38        46        46        41        46        46        35        46        44        39        46        35        45        40        44        37        41        40
v36        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v37        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v38        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v39        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v40        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v41        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v42        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v43        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v44        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v45        37        41        41        41        37        41        36        38        41        41        41        41        41        35        41        41        39        41        35        41        40        41        37        41        40
v46        36        36        36        36        36        36        36        36        36        36        36        36        36        35        36        36        36        36        35        36        36        36        36        36        36
v47        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v48        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v49        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v50        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         5         9         9         3         3         3         3         11        13        12        10        13        12        7         4         3         3         5         9         15        10        7         6         12        3
v2         8         9         9         8         8         8         8         11        13        12        10        13        12        8         8         8         8         8         9         15        10        8         8         12        8
v3         9         9         9         9         9         9         9         11        13        12        10        13        12        9         9         9         9         9         9         15        10        9         9         12        9
v4         16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v5         24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v6         7         9         9         7         7         7         7         11        13        12        10        13        12        7         7         7         7         7         9         15        10        7         7         12        7
v7         18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v8         20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v9         19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v10        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v11        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v12        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        15        13        13        13        13        13
v14        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v15        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        15        14        14        14        14        14
v16        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v17        11        11        11        11        11        11        11        11        13        12        11        13        12        11        11        11        11        11        11        15        11        11        11        12        11
v18        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v19        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v20        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v21        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v22        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v23        5         9         9         5         5         5         5         11        13        12        10        13        12        7         5         5         5         5         9         15        10        7         6         12        5
v24        5         9         9         2         1         1         2         11        13        12        10        13        12        7         4         3         2         5         9         15        10        7         6         12        3
v25        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v26        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v27        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v28        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v29        5         9         9         5         5         5         5         11        13        12        10        13        12        7         5         5         5         5         9         15        10        7         6         12        5
v30        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v31        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v32        8         9         9         8         8         8         8         11        13        12        10        13        12        8         8         8         8         8         9         15        10        8         8         12        8
v33        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v34        12        12        12        12        12        12        12        12        13        12        12        13        12        12        12        12        12        12        12        15        12        12        12        12        12
v35        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v36        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v37        11        11        11        11        11        11        11        11        13        12        11        13        12        11        11        11        11        11        11        15        11        11        11        12        11
v38        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        15        14        14        14        14        14
v39        7         9         9         7         7         7         7         11        13        12        10        13        12        7         7         7         7         7         9         15        10        7         7         12        7
v40        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v41        9         9         9         9         9         9         9         11        13        12        10        13        12        9         9         9         9         9         9         15        10        9         9         12        9
v42        12        12        12        12        12        12        12        12        13        12        12        13        12        12        12        12        12        12        12        15        12        12        12        12        12
v43        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        15        13        13        13        13        13
v44        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        15        13        13        13        13        13
v45        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v46        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v47        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v48        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        15        13        13        13        13        13
v49        8         9         9         8         8         8         8         11        13        12        10        13        12        8         8         8         8         8         9         15        10        8         8         12        8
v50        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20;
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
CONST5(V,CB,CB2,T) $ (LEN(V)>=2 AND ORD(T)>=L(V,CB) AND ORD(T)<=(U(V,CB)-PO(V)) AND ORD(CB)=ORD(CB2))..                                          (X(V,CB,T)+X(V,CB2,T)) =l= 1;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;

