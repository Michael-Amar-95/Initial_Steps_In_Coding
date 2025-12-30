Array = linspace(1,28,28);
% creat a matrix with 7 lines and 4 column 
Array = reshape(Array, [7,4]);
result1 = ComputeMeanAndStdStruct(Array,1)
resulr2 = ComputeMeanAndStdStruct(Array,2)