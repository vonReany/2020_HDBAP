SETS
V        vessels                                 /v1*v50/
B        berths                                  /b1*b25/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b8,b17/
CB2(B)   not assigned corner berths              /b9,b18/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 10, v2 2, v3 3, v4 3, v5 5, v6 6, v7 7, v8 9, v9 4, v10 6, v11 4, v12 10, v13 4, v14 2, v15 4, v16 9, v17 4, v18 10, v19 9, v20 2, v21 6, v22 9, v23 10, v24 9, v25 8, v26 6, v27 4, v28 2, v29 8, v30 2, v31 9, v32 10, v33 7, v34 9, v35 6, v36 9, v37 3, v38 2, v39 7, v40 10, v41 8, v42 5, v43 6, v44 10, v45 10, v46 6, v47 9, v48 3, v49 10, v50 7/
PO(V)    processing time of vessel v             /v1 9, v2 7, v3 3, v4 8, v5 6, v6 2, v7 9, v8 10, v9 2, v10 2, v11 6, v12 4, v13 2, v14 4, v15 4, v16 10, v17 7, v18 6, v19 10, v20 6, v21 9, v22 3, v23 4, v24 4, v25 10, v26 6, v27 8, v28 7, v29 8, v30 7, v31 7, v32 4, v33 7, v34 7, v35 10, v36 7, v37 9, v38 3, v39 2, v40 3, v41 3, v42 10, v43 2, v44 10, v45 7, v46 8, v47 7, v48 4, v49 3, v50 5/
LEN(V)   length of vessel v                      /v1 1, v2 1, v3 1, v4 1, v5 2, v6 1, v7 2, v8 2, v9 3, v10 1, v11 1, v12 3, v13 2, v14 2, v15 1, v16 2, v17 1, v18 2, v19 2, v20 2, v21 2, v22 2, v23 1, v24 3, v25 2, v26 1, v27 3, v28 2, v29 3, v30 2, v31 2, v32 2, v33 1, v34 1, v35 1, v36 1, v37 1, v38 3, v39 3, v40 3, v41 3, v42 3, v43 2, v44 1, v45 2, v46 1, v47 2, v48 1, v49 2, v50 1/
T1(V)    expected time to arrival of vessel v    /v1 29, v2 25, v3 24, v4 20, v5 3, v6 3, v7 20, v8 9, v9 28, v10 17, v11 13, v12 7, v13 15, v14 13, v15 24, v16 10, v17 28, v18 26, v19 13, v20 30, v21 12, v22 21, v23 7, v24 15, v25 25, v26 6, v27 20, v28 19, v29 14, v30 30, v31 20, v32 1, v33 13, v34 24, v35 27, v36 7, v37 29, v38 29, v39 15, v40 4, v41 3, v42 2, v43 13, v44 24, v45 8, v46 22, v47 28, v48 7, v49 20, v50 18/
T2(V)    expected time to departure of vessel v  /v1 47, v2 39, v3 30, v4 36, v5 15, v6 7, v7 38, v8 29, v9 32, v10 21, v11 25, v12 15, v13 19, v14 21, v15 32, v16 30, v17 42, v18 38, v19 33, v20 42, v21 30, v22 27, v23 15, v24 23, v25 45, v26 18, v27 36, v28 33, v29 30, v30 44, v31 34, v32 9, v33 27, v34 38, v35 47, v36 21, v37 47, v38 35, v39 19, v40 10, v41 9, v42 22, v43 17, v44 44, v45 22, v46 38, v47 42, v48 15, v49 26, v50 28/
S(B)     available start time of berth b         /b1 2, b2 6, b3 1, b4 1, b5 1, b6 4, b7 14, b8 9, b9 13, b10 9, b11 1, b12 5, b13 10, b14 8, b15 8, b16 7, b17 1, b18 10, b19 4, b20 6, b21 4, b22 4, b23 1, b24 8, b25 2/
E(B)     available end time of berth b           /b1 40, b2 50, b3 50, b4 50, b5 45, b6 35, b7 38, b8 42, b9 45, b10 48, b11 50, b12 44, b13 41, b14 37, b15 50, b16 45, b17 42, b18 43, b19 45, b20 49, b21 46, b22 43, b23 42, b24 42, b25 43/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         40        47        47        47        45        35        38        42        45        47        47        44        41        37        47        45        42        43        45        47        46        43        42        42        43
v2         39        39        39        39        39        35        38        39        39        39        39        39        39        37        39        39        39        39        39        39        39        39        39        39        39
v3         30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v4         36        36        36        36        36        35        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v5         15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v6         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7
v7         38        38        38        38        38        35        38        38        38        38        38        38        38        37        38        38        38        38        38        38        38        38        38        38        38
v8         29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v9         32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v10        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v11        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v12        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v13        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v14        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v15        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v16        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v17        40        42        42        42        42        35        38        42        42        42        42        42        41        37        42        42        42        42        42        42        42        42        42        42        42
v18        38        38        38        38        38        35        38        38        38        38        38        38        38        37        38        38        38        38        38        38        38        38        38        38        38
v19        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v20        40        42        42        42        42        35        38        42        42        42        42        42        41        37        42        42        42        42        42        42        42        42        42        42        42
v21        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v22        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v23        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v24        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v25        40        45        45        45        45        35        38        42        45        45        45        44        41        37        45        45        42        43        45        45        45        43        42        42        43
v26        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v27        36        36        36        36        36        35        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v28        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v29        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v30        40        44        44        44        44        35        38        42        44        44        44        44        41        37        44        44        42        43        44        44        44        43        42        42        43
v31        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v32        9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v33        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v34        38        38        38        38        38        35        38        38        38        38        38        38        38        37        38        38        38        38        38        38        38        38        38        38        38
v35        40        47        47        47        45        35        38        42        45        47        47        44        41        37        47        45        42        43        45        47        46        43        42        42        43
v36        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v37        40        47        47        47        45        35        38        42        45        47        47        44        41        37        47        45        42        43        45        47        46        43        42        42        43
v38        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v39        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v40        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10
v41        9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v42        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v43        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v44        40        44        44        44        44        35        38        42        44        44        44        44        41        37        44        44        42        43        44        44        44        43        42        42        43
v45        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v46        38        38        38        38        38        35        38        38        38        38        38        38        38        37        38        38        38        38        38        38        38        38        38        38        38
v47        40        42        42        42        42        35        38        42        42        42        42        42        41        37        42        42        42        42        42        42        42        42        42        42        42
v48        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v49        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v50        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28;

TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v2         25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v3         24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v4         20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v5          3         6         3         3         3         4        14         9        13         9         3         5        10         8         8         7         3        10         4         6         4         4         3         8         3
v6          3         6         3         3         3         4        14         9        13         9         3         5        10         8         8         7         3        10         4         6         4         4         3         8         3
v7         20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v8          9         9         9         9         9         9        14         9        13         9         9         9        10         9         9         9         9        10         9         9         9         9         9         9         9
v9         28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v10        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v11        13        13        13        13        13        13        14        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v12         7         7         7         7         7         7        14         9        13         9         7         7        10         8         8         7         7        10         7         7         7         7         7         8         7
v13        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v14        13        13        13        13        13        13        14        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v15        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v16        10        10        10        10        10        10        14        10        13        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10
v17        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v18        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v19        13        13        13        13        13        13        14        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v20        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v21        12        12        12        12        12        12        14        12        13        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v22        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v23         7         7         7         7         7         7        14         9        13         9         7         7        10         8         8         7         7        10         7         7         7         7         7         8         7
v24        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v26         6         6         6         6         6         6        14         9        13         9         6         6        10         8         8         7         6        10         6         6         6         6         6         8         6
v27        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v28        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v29        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v31        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v32         2         6         1         1         1         4        14         9        13         9         1         5        10         8         8         7         1        10         4         6         4         4         1         8         2
v33        13        13        13        13        13        13        14        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v34        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v35        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v36         7         7         7         7         7         7        14         9        13         9         7         7        10         8         8         7         7        10         7         7         7         7         7         8         7
v37        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v38        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v39        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v40         4         6         4         4         4         4        14         9        13         9         4         5        10         8         8         7         4        10         4         6         4         4         4         8         4
v41         3         6         3         3         3         4        14         9        13         9         3         5        10         8         8         7         3        10         4         6         4         4         3         8         3
v42         2         6         2         2         2         4        14         9        13         9         2         5        10         8         8         7         2        10         4         6         4         4         2         8         2
v43        13        13        13        13        13        13        14        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v44        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v45         8         8         8         8         8         8        14         9        13         9         8         8        10         8         8         8         8        10         8         8         8         8         8         8         8
v46        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v47        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v48         7         7         7         7         7         7        14         9        13         9         7         7        10         8         8         7         7        10         7         7         7         7         7         8         7
v49        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v50        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18;

BINARY VARIABLES
X(V,B,T);
VARIABLES
Z        objective function value;
EQUATIONS
CONST1
CONST2
CONST3
CONST4
OBJECTIVE;

CONST1(V)..                                                                                                                                      SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), X(V,B,T))) =e= LEN(V);
CONST2(B,T) $ (ORD(T)>=S(B) AND ORD(T)<=(E(B)-1))..                                                                                              SUM( V, SUM( TO $ (ORD(TO)>=T1(V) AND ORD(TO)>=S(B) AND ORD(TO)>=(ORD(T)+1-PO(V)) AND ORD(TO)<=ORD(T) AND ORD(TO)<=(T2(V)-PO(V)) AND ORD(TO)<=(E(B)-PO(V))), X(V,B,TO))) =l= 1;
CONST3(V,T,B1,B2) $ (LEN(V)>=2 AND ORD(T)>=L(V,B1) AND ORD(T)<=(U(V,B1)-PO(V)) AND ORD(T)>=L(V,B2) AND ORD(T)<=(U(V,B2)-PO(V)))..                (X(V,B1,T) + X(V,B2,T) - 2)*999 + (ORD(B1) - ORD(B2)) =l= LEN(V) - 1;
CONST4(V,B1,B2,TT1,TT2) $ (LEN(V)>=2 AND ORD(TT1)>=L(V,B1) AND ORD(TT1)<=(U(V,B1)-PO(V)) AND ORD(TT2)>=L(V,B2) AND ORD(TT2)<=(U(V,B2)-PO(V)))..  (X(V,B1,TT1) + X(V,B2,TT2) - 2)*999 + (ORD(TT1) - ORD(TT2)) =l= 0;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;
