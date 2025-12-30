% Creat an array with 8 random values
P = rand (8,1);
M = RandomSelectionByProbability(P , length(P))
% Creat another array
N = RandomSelectionByProbability(0.4 , 10000)
length(N)