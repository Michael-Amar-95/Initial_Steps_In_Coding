function[iteams] = PopulationSimulationStruct(structer)
% This function return the num of iteams 
% N0 = An array of diffrent population at the first generation 
% K = capacity
% lamda = the growth factor
% Generation = num of genetration
n_0 = structer.N0; 
k = structer.K;
lamda = structer.lamda;
generation = structer.Generation;

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
