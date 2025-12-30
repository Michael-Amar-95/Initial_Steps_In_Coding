function [population_size] = LogisticPopulationFromStruct(structer) 
% this function calculates the number of organisames after number 
% of generation under limit of resources and carring capacity of population
%  t - time, n0 - number of organisame at beggining, k -  carring capacity
% of population, lamda - grothw factor

% load the data from the struct
t = structer.times;
n0 = structer.N0;
k = structer.K;
lamda = structer.lamda;

%make t to be a vertical array
t = reshape(t, length(t) ,1);
%make n0 to be an horizontal array
n0 = reshape(n0, 1, length(n0));
population_size = (n0 .* lamda .^ t) ./ (1+(n0 .* (lamda .^ t - 1) ./ k)); 
end



