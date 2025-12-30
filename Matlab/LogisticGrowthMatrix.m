function [Nt] = LogisticGrowthMatrix( t, n0, k, lamda)
% this function calculates the number of organisames after number 
% of generation under limit of resources carring capacity of population
%  t - time, n0 - number of organisame at beggining, k -  carring capacity
% of population, lamda - grothw factor

%make t to be a vertical array
t = reshape(t, length(t) ,1);
%make n0 to be an horizontal array
n0 = reshape(n0, 1, length(n0));
Nt = (n0 .* lamda .^ t) ./ (1+(n0 .* (lamda .^ t - 1) ./ k)); 
end



