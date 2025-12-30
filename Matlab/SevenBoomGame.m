function [arrayOfCells] = SevenBoomGame(N)
% This function play 7-boom

% Create an array of cell with 1 column and N lines 
arrayOfCells = cell(N,1);
% Run on indexes between 1 to N
for n = 1:N
    % check if the number divide by 7
    str_num = num2str(n)
    if mod(n,7) == 0
        arrayOfCells(n) = {'boom'}
    % check if the number contain the number 7
    elseif find(str_num == '7')
        arrayOfCells(n) = {'boom'}
    else
        arrayOfCells(n) = {n}
    end
end

