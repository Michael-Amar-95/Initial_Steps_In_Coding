function [concatenation] = ConcatenateWithError(T,N,E)
% This function concatenate all the arguments in the input
string_N = num2str(N)
string_E = num2str(E)
plus_minus = [' ' , 177, ' ']
equal = [' ' , '=' , ' ']
concatenation = [T equal string_N plus_minus string_E]
end

