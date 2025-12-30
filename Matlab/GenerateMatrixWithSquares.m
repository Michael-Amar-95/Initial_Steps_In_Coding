%The function get an integer and return an array with 2 lines like 
%explained in the code.
function [matrix] = GenerateMatrixWithSquares(N)
% Create an array with value from 1 to N with different of 1  
A = linspace(1,N,N);
%create an array with two line. The first line have positive 
%value and the second one have negative 
B = [A; -1*A];
%New vertical array with 2N lines and 1 column 
C = reshape(B, 2 * N, 1);
% Change C to be an horizontal array
D = reshape(C, 1, 2 *N);
%return an array with two line. The first line have the values from array D
%and the second have the same value powered by 2.
matrix = [D; D .* D];
end

