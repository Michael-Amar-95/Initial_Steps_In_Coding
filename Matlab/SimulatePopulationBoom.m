function[iteams] = SimulatePopulationBoom(n_0, k, lamda, generation)
% This function return the num of iteams 
% n_0 = An array of diffrent population at the first generation 
% k = capacity
% lamda = the growth factor
% Generation = num of genetration
% create a matrix n*m
iteams = nan(generation + 1, length(n_0));
% save in the first line the array n_0
iteams (1, :) = n_0;
% calculate the iteams in each generation by the output of
% of the previous line
% the output from NextGenerationArray
for i=1:generation
    iteams(i+1,:) = NextGenerationArray(iteams (i, :), k, lamda);
end
