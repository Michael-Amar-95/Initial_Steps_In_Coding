% The function get an array and return a new array with all the values in
% the input exept the nan value 
function [arrayWithOutNan] = RemoveNaNValues(arrayWithNan)
% update all the values in the array to be false and all the nan values to
% be true
logic = isnan(arrayWithNan);
%swap all the logic valueas
logic = not (logic);
%find all the index that have true value
index = logic;
% take from the input only the indexs that have real value
arrayWithOutNan = arrayWithNan(index);
end

