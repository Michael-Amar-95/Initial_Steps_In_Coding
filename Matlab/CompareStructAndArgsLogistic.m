% a struct
params = struct('times','N0','K','lamda');
params.times = linspace(0,7,50);
params.N0 = [2 5 8];
params.K = 20;
params.lamda = 6;

Nstruct = LogisticPopulationFromStruct (params);
Nargs = LogisticGrowthMatrix(params.times, params.N0,params.K,params.lamda);

% If the diffrent between values is zero then the value is 1 in the new
% array, o.w save the value 0. The values are written in the matrix
matrixOfLogistic = (Nstruct-Nargs == 0);
% The output is array, each column represent 
% a column in the matrix
arrayOfLogistic = all(matrixOfLogistic);
% Check if the array contain only 1 - es.
OK = all(arrayOfLogistic);

