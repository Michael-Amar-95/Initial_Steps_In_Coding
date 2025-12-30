function [dup_array] = DuplicateArrayValues (origin_array)
%The function duplicate the values in the array

%Creat an array twice longer than the original, with nan values
dup_array = nan(1, 2 * length(origin_array)); 
%Put the values in odd indexes
dup_array(1:2:end) = origin_array;
%Put the values in even indexes
dup_array(2:2:end) = origin_array;
end

