% This function get an array of number and choose a random number from it
function[arrayOfIndexs]= RandomSelectionByProbability(P , N)
% Change the input to be an array as line 
% The first variable is the array we want to change
P = reshape(P, 1, length(P));
% Choose n on m line random number between o to 1  
rand_array =  rand(1, N);
% Find the values that smaller than the values in P
arrayOfIndexs = find(rand_array < P);
end