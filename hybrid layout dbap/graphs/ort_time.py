import matplotlib.pyplot as plt
import numpy as np

times= [[ [ 0.961, 0.976, 1.204, 1.038, 6.547, 7.016, 10.658, 5.621, 29.297, 18.652, 57.083, 128.518, 50.258, 180.256, 107.833, 212.619, 1079.003, 123.541, 93.115, 125.614, 1135.007, 340.353, 179.728, 1135.186 ]
, [ 0.167, 0.675, 0.849, 0.405, 2.813, 2.155, 2.738, 2.428, 10.621, 10.980, 12.828, 12.540, 22.226, 27.293, 27.199, 20.878, 31.226, 25.733, 43.173, 34.527, 92.095, 92.374, 105.935, 77.997 ]
, [ 0.154, 0.232, 0.414, 0.136, 1.590, 1.140, 1.682, 1.457, 7.009, 8.190, 9.690, 9.340, 18.629, 26.369, 17.795, 18.928, 31.687, 23.749, 35.108, 33.327, 87.487, 69.874, 110.863, 67.304 ]
, [ 0.131, 0.227, 0.373, 0.129, 1.491, 1.116, 1.542, 1.254, 6.119, 10.393, 11.194, 8.038, 20.704, 25.418, 13.058, 19.409, 31.266, 24.448, 38.026, 34.353, 91.849, 92.320, 107.295, 71.581 ]
, [ 0.178, 0.287, 0.400, 0.175, 1.875, 1.278, 1.868, 1.522, 7.292, 9.864, 10.772, 10.324, 18.769, 23.861, 16.794, 17.410, 31.226, 25.733, 43.173, 34.527, 92.095, 92.374, 105.935, 77.997 ]
],
        [
[ 0.920, 0.903, 1.076, 1.028, 5.966, 6.965, 10.915, 5.682, 31.485, 20.277, 253.504, 189.987, 50.249, 178.704, 167.599, 314.412, 1078.918, 149.104, 95.472, 99.897, 1134.945, 333.341, 323.103, 1141.418 ]
, [ 0.120, 0.437, 0.500, 0.419, 2.289, 2.922, 2.654, 2.471, 9.353, 10.537, 12.009, 10.787, 18.625, 21.868, 18.511, 17.429, 41.051, 40.382, 42.419, 26.142, 96.883, 93.609, 101.068, 78.431 ]
, [ 0.117, 0.146, 0.182, 0.416, 1.316, 1.270, 1.483, 1.372, 5.365, 10.148, 8.581, 7.503, 19.145, 20.272, 15.695, 14.981, 44.110, 29.581, 33.792, 12.923, 82.627, 65.788, 83.917, 65.893 ]
, [ 0.103, 0.129, 0.139, 0.205, 1.119, 1.263, 1.541, 1.052, 6.119, 8.660, 9.822, 10.824, 17.629, 21.481, 17.473, 18.529, 47.315, 40.761, 38.567, 12.028, 86.693, 94.164, 88.179, 66.817 ]
, [ 0.141, 0.167, 0.172, 0.221, 1.303, 1.536, 1.588, 1.375, 7.522, 7.364, 8.158, 9.016, 17.073, 17.633, 16.609, 16.809, 47.660, 34.807, 41.581, 23.811, 94.211, 79.896, 73.901, 82.839 ]
        ]]

type = int(input("Flat Structure - 0 ; Quadratic Structure - 1 = "))

cases = [
    "10-5-1","10-5-2","10-5-3","10-5-4","20-10-1","20-10-2","20-10-3","20-10-4","30-15-1","30-15-2","30-15-3","30-15-4","40-20-1","40-20-2","40-20-3","40-20-4","50-25-1","50-25-2","50-25-3","50-25-4","60-30-1","60-30-2","60-30-3","60-30-4"
]

figu = plt.figure()

plt.plot(cases,times[type][0],c="c",label="ibm ilog cplex")
plt.plot(cases,times[type][1],c="r",label="firefly optimization")
plt.plot(cases,times[type][2],c="g",label="particle swarm optimization")
plt.plot(cases,times[type][3],c="b",label="hybrid firefly and particle swarm optimization")
plt.plot(cases,times[type][4],c="y",label="hybrid firefly and particle swarm optimization - 2")


plt.legend(loc="upper left")
if type == 0:
    plt.title("Average Times of Solution Algorithms for HDBAP with Flat Structure")
elif type == 1:
    plt.title("Average Times of Solution Algorithms for HDBAP with Quadratic Structure")
plt.xlabel("Cases")
plt.ylabel("Time (second)")
plt.grid()
axes = plt.gca()
axes.set_ylim([0, 200])
plt.xticks(rotation=90)
plt.show()

figu.savefig("figure16.pdf", bbox_inches='tight')

print(np.average(times[1][0]))
print(np.average(times[1][1]))
print(np.average(times[1][2]))
print(np.average(times[1][3]))
print(np.average(times[1][4]))
print(np.std(times[1][0]))
print(np.std(times[1][1]))
print(np.std(times[1][2]))
print(np.std(times[1][3]))
print(np.std(times[1][4]))


