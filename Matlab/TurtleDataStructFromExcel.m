function [structer] = TurtleDataStructFromExcel(excelFile, arrayOfFiles, colNum)
% This function get details about turtles and return a struct with
% information.

% excelfile - a numeric array thst losd from the csv file
% arrayOfFiles - an array of cells witch contain text
% colNum - the index of the column where the data start about a specifc
%iteam

structer = struct('Case','Longevity','Fertility', 'deathRate');
% Load the data from the cell as an array of chars
titleText = arrayOfFiles(colNum);
% delete the last 3 chars and save in the struct
structer.Case = titleText{1}(1:end-3);

% load the column from the excel file
column = excelFile(:,colNum);
% delete all the values that are Nan
noNanCol = RemoveNaNValues(column);
% create an array
simpleArray = linspace(0,length(noNanCol) - 1, length(noNanCol));
% change the array to be a column
simpleArray = reshape(simpleArray, length(simpleArray), 1);

structer.Longevity = [simpleArray noNanCol];
% Take first value in the column
structer.Fertility = excelFile(1,colNum+1);

% get an array of death rate
deathRateArray = TurtleDeathRateAnalysis(noNanCol);

simpleDeathRateArray = linspace(0, length(deathRateArray) - 1, length(deathRateArray)); 
simpleDeathRateArray = reshape(simpleDeathRateArray, length(simpleDeathRateArray),1);

structer.deathRate = [simpleDeathRateArray deathRateArray];



end

