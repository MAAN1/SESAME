# SESAME
"Smart European Space Access thru Modern Exploitation of Data Science" (SESAME ) (EU H2020 Project n. 821875).
import numpy as np
#A very simple example and fisrt code of SESAME RL approch


def state_space(state, w, R):
    # Generac State space%% equations (1-4)
    if state(w, j, R) == 0:

        #assign job to workstation

    elif state_space(w,j,R)== d:

        # currently job is executing at workstation j and d is remaning time of execution

    else:state(w, j, R) == 1  # if Workstation w is working on task j

return new_state(w,R)

def action_space(W,R,j):
    # constraints of agent to take action in our system:
    # %%Reward function%% equations (8)
    # we have four combination for our reward function defining
    # we call it barrier function

    if state(w, R) == 1:
        r = -1
    else:
        state(w, R) == 0
    r = 1

    # Action Space %% equation (5-7)
    action(w, j) = 1  # if task j is allocated at workstation w
    action(w, j) = 0  # otherwise.
    action(w,:, 1 + r)= 1  # if the level of resources

    return next_state, action_job, j_sequence


def Q_learning():
    W = 2  # total number of worksatations
    J = 2  # % total number of tasks
    R = 2  # Number of resources (currently we consider all type of resources
    # available at each workstation)
    gamma = 0.5;  # discount factor % TODO : we need learning rate schedule
    alpha = 0.5;  # learning rate % TODO : we need exploration rate schedule
    epsilon = 0.9
    n_learning_episode = 10

    for episode in range(n_learning_episode):
        s = [i for i in range(len(j))]

        j_sequence = []

        q_table = state_space(state,w,R) # return q_table, key_count

        while not s == []:
            q_target = r + GAMMA * max(q_table[tuple(next_state)][:])

            q_predict = q_table[tuple(s)][action_job]

            q_table[tuple(s)][action_job] += alpha * (q_target - q_predict)

            s = next_state

        return q_table


if __name__ == "__main__":
    q_table = Q_learning()
    print(q_table)
