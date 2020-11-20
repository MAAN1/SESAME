# SESAME
%% DEFINITION OF PARAMETERS
K = 1000;               % termporal horizon
T = 5;                  % number of tasks to be controlled
W = 10;                 % numberf of workstations

% Initialize the state, action,... of the system
S_t0 = zeros(T,1);      % time left to complete each task
S_w0 = zeros(W,1);      % for every workstation, we have -1 if faulted; 0 if available; j if processing task j
a_t_ij_t0 = zeros(W,T);  % action associated to task mapping

%% LOOP

for k=1:K
    
    % measure the current state of the system
    S_t_k = ones(T,1);                      % ##############   to be fixed         
    S_w_k = zeros(W,1);                     % ##############   to be fixed  
    
    while sum(S_t_k) == 0                   % if sum(S_t_k) == 0 then all tasks are complete 
        %% DISABLE THE INFEASIBLE ACTIONS (e.g., DERIVING FROM KNOWN FAULTS)
        % in these loops we handle the cases where we have a fault in a
        % workstation or in a task. In these states, we set to negative the
        % value of W, so that it is NOT selected by the policy
        for i=1:W
            for j=1:T
                % TO BE DONE
            end
        end
        %% STEP: SELECT ACTION ACCORDING TO POLICY
        % ####### TO BE DONE
        a_t_ij_k = zeros(W,T);  % ##############   to be fixed
        
        %% STEP: CHECK FEASIBILITY OF THE SELECTED ACTION
        
        % SUBSTEP: for every new task assignement, check that the
        % workstation where the task is assigned has suffidient capacity to
        % process the task
        W_k = find(sum(a_t_ij_k,2));                % set of workstations where at time k the algorithm is mapping tasks
        % check if workstations in W_k is available to process the newly assigned tasks
        for w = W_k   % ####### see if this work
            if S_w_k(w) == 1            % infeasible, the workstation is busy
                % 
            end
        end
    
        % SUBSTEP: check that the workstation where we assignt a task has the necessary resources to process the task 
    
        % SUBSTEP: check that the precedence relation among tasks is
        % satisfied
        
        %% UPDATE THE STATE ACCORDING TO THE ACTION (##### THIS STEP MUST BE COORDINATED WITH THE PREVIOUS ONE)
        
 
