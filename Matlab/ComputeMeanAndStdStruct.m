function [structer] = ComputeMeanAndStdStruct(matrix,dimension)
% matrix - an array with 1 or 2 dimention
% dimen�ion - the place we do the calculate in the code
% structer - a struct, contain a key and the Scattering

% define a struct
structer = struct('represent', 'spread');
% esign the first member - find the average in dimension number 'dimension'
structer.represent = mean(matrix, dimension);
% esign the second member - find the std in dimension number 'dimension'
% the argument is 1 becuase i want the std for all the values and not for 
% value lees 1 
structer.spread = std(matrix, 1, dimension);

end

