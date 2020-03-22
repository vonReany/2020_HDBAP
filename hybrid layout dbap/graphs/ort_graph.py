import matplotlib.pyplot as plt
import numpy as np
from matplotlib.pyplot import savefig

ortfo = list()
ortpso = list()
orthfpso = list()
orthfpso2 = list()

datas = [
    [ [ [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ] ],
        [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0119, 0.0005 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0098, 0.0002 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0140, 0.0005 ], [ 0.0000, 0.0000, 0.0000 ] ],
        [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0119, 0.0003 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0098, 0.0005 ], [ 0.0000, 0.0072, 0.0001 ], [ 0.0000, 0.0140, 0.0005 ], [ 0.0000, 0.0149, 0.0003 ] ],
        [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ] ] ],
      [ [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0034, 0.0012 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ] ],
        [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0067, 0.0025 ], [ 0.0000, 0.0038, 0.0001 ], [ 0.0000, 0.0176, 0.0015 ] ],
        [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0034, 0.0024 ], [ 0.0000, 0.0038, 0.0003 ], [ 0.0000, 0.0176, 0.0030 ] ],
        [ [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0034, 0.0019 ], [ 0.0000, 0.0000, 0.0000 ], [ 0.0000, 0.0176, 0.0005 ] ] ] ],
    [ [ [ [ 0.0000, 0.0253, 0.0124 ], [ 0.0000, 0.0265, 0.0086 ], [ 0.0000, 0.0142, 0.0055 ], [ 0.0119, 0.0289, 0.0204 ], [ 0.0130, 0.0545, 0.0341 ], [ 0.0060, 0.0332, 0.0206 ], [ 0.0000, 0.0183, 0.0075 ], [ 0.0144, 0.0507, 0.0351 ] ],
        [ [ 0.0000, 0.0291, 0.0153 ], [ 0.0000, 0.0466, 0.0085 ], [ 0.0000, 0.0175, 0.0047 ], [ 0.0007, 0.0423, 0.0183 ], [ 0.0130, 0.0582, 0.0341 ], [ 0.0000, 0.0385, 0.0195 ], [ 0.0000, 0.0263, 0.0081 ], [ 0.0045, 0.0893, 0.0350 ] ],
        [ [ 0.0000, 0.0197, 0.0146 ], [ 0.0000, 0.0393, 0.0085 ], [ 0.0000, 0.0225, 0.0056 ], [ 0.0030, 0.0304, 0.0199 ], [ 0.0136, 0.0545, 0.0331 ], [ 0.0023, 0.0370, 0.0208 ], [ 0.0000, 0.0227, 0.0076 ], [ 0.0076, 0.0810, 0.0348 ] ],
        [ [ 0.0000, 0.0253, 0.0123 ], [ 0.0000, 0.0229, 0.0081 ], [ 0.0000, 0.0200, 0.0045 ], [ 0.0089, 0.0326, 0.0192 ], [ 0.0105, 0.0601, 0.0332 ], [ 0.0000, 0.0446, 0.0182 ], [ 0.0007, 0.0249, 0.0061 ], [ 0.0053, 0.0727, 0.0333 ] ] ],
      [ [ [ 0.0000, 0.0225, 0.0118 ], [ 0.0000, 0.0263, 0.0089 ], [ 0.0000, 0.0217, 0.0076 ], [ 0.0089, 0.0362, 0.0241 ], [ 0.0105, 0.0749, 0.0390 ], [ 0.0174, 0.0431, 0.0302 ], [ 0.0000, 0.0161, 0.0082 ], [ 0.0151, 0.0740, 0.0370 ] ],
        [ [ 0.0000, 0.0394, 0.0138 ], [ 0.0000, 0.0797, 0.0113 ], [ 0.0000, 0.0326, 0.0100 ], [ 0.0052, 0.0399, 0.0232 ], [ 0.0142, 0.0755, 0.0373 ], [ 0.0045, 0.0491, 0.0284 ], [ 0.0000, 0.0292, 0.0079 ], [ 0.0015, 0.0853, 0.0368 ] ],
        [ [ 0.0000, 0.0197, 0.0146 ], [ 0.0000, 0.0426, 0.0098 ], [ 0.0000, 0.0317, 0.0070 ], [ 0.0074, 0.0392, 0.0228 ], [ 0.0111, 0.0699, 0.0384 ], [ 0.0030, 0.0438, 0.0297 ], [ 0.0000, 0.0292, 0.0078 ], [ 0.0143, 0.0830, 0.0365 ] ],
        [ [ 0.0000, 0.0309, 0.0114 ], [ 0.0000, 0.0317, 0.0092 ], [ 0.0000, 0.0234, 0.0063 ], [ 0.0059, 0.0392, 0.0229 ], [ 0.0136, 0.0718, 0.0384 ], [ 0.0151, 0.0468, 0.0290 ], [ 0.0000, 0.0212, 0.0073 ], [ 0.0121, 0.0755, 0.0357 ] ] ] ],
    [ [ [ [ 0.0279, 0.0936, 0.0607 ], [ 0.0074, 0.0212, 0.0142 ], [ 0.0000, 0.0139, 0.0069 ], [ 0.0067, 0.0311, 0.0154 ], [ 0.0110, 0.0348, 0.0236 ], [ 0.0094, 0.0183, 0.0128 ], [ 0.0201, 0.0336, 0.0268 ], [ 0.0100, 0.0217, 0.0158 ] ],
        [ [ 0.0274, 0.1068, 0.0572 ], [ 0.0074, 0.0305, 0.0146 ], [ 0.0000, 0.0139, 0.0065 ], [ 0.0022, 0.0284, 0.0134 ], [ 0.0050, 0.0416, 0.0220 ], [ 0.0038, 0.0211, 0.0109 ], [ 0.0118, 0.0351, 0.0254 ], [ 0.0086, 0.0199, 0.0149 ] ],
        [ [ 0.0279, 0.1035, 0.0586 ], [ 0.0074, 0.0246, 0.0144 ], [ 0.0000, 0.0139, 0.0066 ], [ 0.0050, 0.0311, 0.0140 ], [ 0.0091, 0.0398, 0.0228 ], [ 0.0075, 0.0192, 0.0131 ], [ 0.0209, 0.0336, 0.0256 ], [ 0.0095, 0.0226, 0.0160 ] ],
        [ [ 0.0279, 0.0936, 0.0607 ], [ 0.0074, 0.0212, 0.0142 ], [ 0.0000, 0.0139, 0.0069 ], [ 0.0067, 0.0311, 0.0154 ], [ 0.0110, 0.0348, 0.0236 ], [ 0.0094, 0.0183, 0.0128 ], [ 0.0201, 0.0336, 0.0268 ], [ 0.0100, 0.0217, 0.0158 ] ] ],
      [ [ [ 0.0218, 0.1373, 0.0693 ], [ 0.0098, 0.0261, 0.0170 ], [ 0.0000, 0.0169, 0.0077 ], [ 0.0098, 0.0613, 0.0312 ], [ 0.0178, 0.0352, 0.0222 ], [ 0.0047, 0.0173, 0.0123 ], [ 0.0150, 0.0328, 0.0263 ], [ 0.0077, 0.0208, 0.0136 ] ],
        [ [ 0.0278, 0.1297, 0.0650 ], [ 0.0079, 0.0359, 0.0168 ], [ 0.0000, 0.0169, 0.0074 ], [ 0.0049, 0.0684, 0.0296 ], [ 0.0119, 0.0393, 0.0257 ], [ 0.0038, 0.0178, 0.0114 ], [ 0.0107, 0.0493, 0.0300 ], [ 0.0059, 0.0267, 0.0142 ] ],
        [ [ 0.0343, 0.1281, 0.0681 ], [ 0.0069, 0.0334, 0.0165 ], [ 0.0000, 0.0182, 0.0078 ], [ 0.0098, 0.0624, 0.0333 ], [ 0.0105, 0.0325, 0.0227 ], [ 0.0042, 0.0178, 0.0117 ], [ 0.0138, 0.0434, 0.0272 ], [ 0.0072, 0.0240, 0.0143 ] ],
        [ [ 0.0125, 0.1302, 0.0643 ], [ 0.0025, 0.0256, 0.0163 ], [ 0.0000, 0.0139, 0.0066 ], [ 0.0088, 0.0618, 0.0344 ], [ 0.0119, 0.0329, 0.0216 ], [ 0.0038, 0.0169, 0.0113 ], [ 0.0107, 0.0340, 0.0274 ], [ 0.0059, 0.0204, 0.0136 ] ] ] ]

]

times= [ [ 0.961, 0.976, 1204, 1038, 6547, 7016, 10658, 5621, 29.297, 18.652, 57.083, 128.518, 50.258, 180.256, 107.833, 212.619, 1079.003, 123.541, 93.115, 125.614, 1135.007, 340.353, 179.728, 1135.186 ]
, [ 0.167, 0.675, 0.849, 0.405, 2813, 2155, 2738, 2428, 10.621, 10.980, 12.828, 12.540, 22.226, 27.293, 27.199, 20.878, 31.226, 25.733, 43.173, 34.527, 92.095, 92.374, 105.935, 77.997 ]
, [ 0.154, 0.232, 0.414, 0.136, 1590, 1140, 1682, 1457, 7.009, 8.190, 9.690, 9.340, 18.629, 26.369, 17.795, 18.928, 31.687, 23.749, 35.108, 33.327, 87.487, 69.874, 110.863, 67.304 ]
, [ 0.131, 0.227, 0.373, 0.129, 1491, 1116, 1542, 1254, 6.119, 10.393, 11.194, 8.038, 20.704, 25.418, 13.058, 19.409, 31.266, 24.448, 38.026, 34.353, 91.849, 92.320, 107.295, 71.581 ]
, [ 0.178, 0.287, 0.400, 0.175, 1875, 1278, 1868, 1522, 7.292, 9.864, 10.772, 10.324, 18.769, 23.861, 16.794, 17.410, 31.226, 25.733, 43.173, 34.527, 92.095, 92.374, 105.935, 77.997 ]
]

type = int(input("Flat Structure - 0 ; Quadratic Structure - 1 = "))
for i in range(4):
    for j in range(3):
        for k in range(8):
            if i == 0:
                ortfo.append(100*datas[j][type][i][k][2])
            elif i == 1:
                ortpso.append(100*datas[j][type][i][k][2])
            elif i == 2:
                orthfpso.append(100*datas[j][type][i][k][2])
            elif i == 3:
                orthfpso2.append(100*datas[j][type][i][k][2])

cases = [
    "10-5-1","10-5-2","10-5-3","10-5-4","20-10-1","20-10-2","20-10-3","20-10-4","30-15-1","30-15-2","30-15-3","30-15-4","40-20-1","40-20-2","40-20-3","40-20-4","50-25-1","50-25-2","50-25-3","50-25-4","60-30-1","60-30-2","60-30-3","60-30-4"
]
ibm_ilog_cplex = [
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
]

figu = plt.figure()
plt.plot(cases,ibm_ilog_cplex,c="c",label="ibm ilog cplex")
plt.plot(cases,ortfo,c="r",label="firefly optimization")
plt.plot(cases,ortpso,c="g",label="particle swarm optimization")
plt.plot(cases,orthfpso,c="b",label="hybrid firefly and particle swarm optimization")
plt.plot(cases,orthfpso2,c="y",label="hybrid firefly and particle swarm optimization - 2")


plt.legend(loc="upper left")
if type == 0:
    plt.title("Average GAPS of Solution Algorithms for HDBAP with Flat Structure")
elif type == 1:
    plt.title("Average GAPS of Solution Algorithms for HDBAP with Quadratic Structure")
plt.xlabel("Cases")
plt.ylabel("GAP %")
plt.grid()
axes = plt.gca()
axes.set_ylim([0, 10])
plt.xticks(rotation=90)
plt.show()

figu.savefig("figure14.pdf", bbox_inches='tight')

print(np.average(ortfo))
print(np.std(ortfo))
print(np.average(ortpso))
print(np.std(ortpso))
print(np.average(orthfpso))
print(np.std(orthfpso))
print(np.average(orthfpso2))
print(np.std(orthfpso2))