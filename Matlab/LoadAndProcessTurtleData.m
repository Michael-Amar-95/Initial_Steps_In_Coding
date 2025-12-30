% read all the data about the turtles and save as array
turtlesData = readmatrix('turtles.xlsx');
% read all the data about the turtles and save as cell
arrayOftitles = readcell('turtles.xlsx');
% save the first line - the titles of each column
arrayOftitles = arrayOftitles(1,1:end);

structer = struct('Case', '', 'Longevity', [], 'Fertility', 0 ,'deathRate', []);

turtles = [structer structer structer];

% save the index of column that we want to work on
arrayOfIndex = [2 4 6];

for i = 1:length(turtles)
    %get the current column
    columnNum = arrayOfIndex(i);
    turtles(i) = TurtleDataStructFromExcel(turtlesData, arrayOftitles, columnNum);
end
    