function [Nt] = LogisticPopulationModel( t, n0, k, lamda)
% this function calculates the number of organisames after number 
% of generation under limit of resources carring capacity of population
%  t - time, n0 - number of organisame at beggining, k -  carring capacity
% of population, lamda - grothw factor
Nt = (n0 .* lamda .^ t) ./ (1+(n0 .* (lamda .^ t - 1) ./ k)); 
end



