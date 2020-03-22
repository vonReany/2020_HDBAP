import pandas as pd
import numpy as np
import random as rnd

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