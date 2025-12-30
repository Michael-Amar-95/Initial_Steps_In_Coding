function [n_t_next] = NextGenerationPopulation(n_t, k, lamda)
%This function calculate how much iteams will be in the next generation
%   n_t - how much iteam exist today, k - capacity, 
% lamda - the change in each generation
n_t_next = n_t * (lamda ^ ( 1 - (n_t / k)));
end

