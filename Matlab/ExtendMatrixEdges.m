% This function get an array with 2 lines and return a new array wirh 3
% lines and an extra column/ The new column will contain the last column in
% the given array/ Thr same idea with the lines :)
function[matrix] = ExtendMatrixEdges(array)
%take the last line
last_line = array (end, :);
%Add the last line to the array we return
matrix = [array;last_line];
%Get the last column
last_column = matrix(:, end);
%Add the last column the the array
matrix = [matrix, last_column];
end

