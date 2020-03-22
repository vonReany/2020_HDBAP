from os import path

import pandas as pd
import numpy as np
import random as rnd

import algorithms.algorithms as algorithms
import functions.berth_schedule as berth_schedule
import functions.statistics as statistics

def take_user_input(prompt="Choose one", input_type=str, possible_inputs=[], input_description=None):
    # DOCUMENT
    if input_description and not len(input_description) == len(possible_inputs):
        print("Debug: possible_inputs and input_description lengths are different.")
    print_possiblities = True # Enable it for first try
    while True:
        # Print possiblities if flag enabled
        if print_possiblities and possible_inputs:
            for i, choice in enumerate(possible_inputs):
                print("> {} {}".format(choice, "- " + input_description[i] if input_description else ""))
            print_possiblities = False
        # Take the input from user
        input_msg = input("{}\n> ".format(prompt)).strip()
        # If user requesting help
        if input_msg == "help":
            print_possiblities = True
            continue
        # Check type of input
        try:
            input_msg = input_type(input_msg)
        except:
            print("!! Type Error, please enter a(n) {}".format(str(input_type.__name__)))
            continue
        # Check if input is correct
        if possible_inputs and input_msg in possible_inputs:
            return input_msg
        elif not possible_inputs:
            return input_msg
        else:
            print("Wrong input. Write help to see your choices. Please enter again.")

def Initial_solution(nParticle,nVessel,minVel,maxVel,minCoordination,maxCoordination):

    SOLS = [[] for _ in range(nParticle)]
    nf = [[] for _ in range(nParticle)]
    Cost = [np.inf for _ in range(nParticle)]
    GloSOL = []
    P = [[] for _ in range(nParticle)]
    pbest = [np.inf for _ in range(nParticle)]
    G = []
    gbest = np.inf

    Solution = [[rnd.uniform(minCoordination,maxCoordination) for _ in range(nVessel)] for _ in range(nParticle)]
    Velocity = [[rnd.uniform(minVel,maxVel) for _ in range(nVessel)] for _ in range(nParticle)]
    aux3 = 0
    aux4 = 0

    return SOLS, nf, Cost, GloSOL, P, pbest, G, gbest, Solution, Velocity, aux3, aux4

class Case():
    def __init__(self, file_name="data.xlsx"):
        self.file_path = path.join("inputs", file_name)
        # Common inputs
        self.nIteration = 50
        self.nParticle = 20
        # Initialize globals
        self.TIMES = []
        self.SOLVS = []
        self.ggbest = 0
        self.gG = []
        # Algorithm specific inputs
        self.c1 = 2.041
        self.c2 = 0.948
        self.wmin = 0.40
        self.wmax = 0.90
        self.beta0 = 1
        self.alfa = 0.50
        self.gamma = 0.10
        # Read from file
        #self.__Read_Data()
        self.case_name = "10-5-1"
        self.structure = "f"
        self.nIter = 5
        self.__Read_Vessel()
        # Calculate algorithm inputs
        self.minCoordination = -self.nVessel * 0.50
        self.maxCoordination = self.nVessel * 0.50
        self.minVel = self.minCoordination * 0.10
        self.maxVel = self.maxCoordination * 0.10
        # Select algorithm
        self.algorithm = take_user_input(prompt="Which algorithm would you like to run?", possible_inputs=["F", "P", "H", "H2"],
                                        input_description=["Firefly Optimization", "Particle Swarm Optimization", "Hybrid Firefly and Particle Swarm Optimization", "Hybrid Firefly and Particle Swarm Optimization - 2"])

    def __Read_Data(self):
        # Reads data inputs
        print("Info: Reading data inputs from {}".format(self.file_path))
        file = pd.ExcelFile(self.file_path)
        self.case_name = take_user_input(prompt="Which case would you like to run?", possible_inputs=file.sheet_names)
        self.structure = take_user_input(prompt="Which port structure would you like to run?", possible_inputs=["f", "q"], input_description=["flat structure", "quadratic"])
        self.nIter = take_user_input(prompt="How many times do you want to run the algorithm?", input_type=int, possible_inputs=None)

    def __Read_Vessel(self):
        # Reads vessel inputs
        data = pd.read_excel(self.file_path, sheet_name=self.case_name)
        pl = data.values.tolist()
        self.nVessel = int(pl[0][1])
        self.p = [int(pl[1][i+1]) for i in range(self.nVessel)]
        self.pro_tim = [int(pl[2][i+1]) for i in range(self.nVessel)]
        self.length = [int(pl[3][i+1]) for i in range(self.nVessel)]
        self.t1 = [int(pl[4][i+1]) for i in range(self.nVessel)]
        self.t2 = [int(pl[5][i+1]) for i in range(self.nVessel)]
        self.nBerth = int(pl[6][1])
        self.s = [int(pl[7][i+1]) for i in range(self.nBerth)]
        self.e = [int(pl[8][i+1]) for i in range(self.nBerth)]
        self.NAB = [int(pl[10][i+1]) for i in range(2)]

    def Run(self):
        for it in range(self.nIter):
            print("{0}\n{1}\nRun {2}\n{1}".format("-"*20, "#"*10, it + 1))
            common_inputs = (self.structure, self.nIteration, self.nParticle, self.nVessel, self.nBerth, self.p, self.pro_tim, self.length, self.t1, self.t2, self.s, self.e, self.NAB,
                            self.minCoordination, self.maxCoordination, self.minVel, self.maxVel, self.TIMES, self.SOLVS, self.ggbest, self.gG)

            if self.algorithm == "F":
                G, gbest, GloSOL, self.TIMES, self.SOLVS, self.ggbest, self.gG = algorithms.FO(common_inputs, self.alfa, self.gamma, self.beta0)
            elif self.algorithm == "P":
                G, gbest, GloSOL, self.TIMES, self.SOLVS, self.ggbest, self.gG = algorithms.PSO(common_inputs, self.c1, self.c2, self.wmin, self.wmax)
            elif self.algorithm == "H":
                G, gbest, GloSOL, self.TIMES, self.SOLVS, self.ggbest, self.gG = algorithms.HFPSO(common_inputs, self.alfa, self.gamma, self.beta0, self.c1, self.c2, self.wmin, self.wmax)
            elif self.algorithm == "H2":
                G, gbest, GloSOL, self.TIMES, self.SOLVS, self.ggbest, self.gG = algorithms.HFPSO2(common_inputs, self.alfa, self.gamma, self.beta0, self.c1, self.c2, self.wmin, self.wmax)

        print("\nStatistics\n------------------------------")
        statistics.stat(self.TIMES, self.SOLVS)
        print("\nBest Solution\n------------------------------")
        print("cost : ", self.ggbest)
        print("\nBest Berth Schedule\n------------------------------")
        berth_schedule.berth_schedule(self.nVessel, self.nBerth, self.s, self.e, self.length, self.pro_tim, self.NAB, self.structure, GloSOL)