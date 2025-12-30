% load the data 
data = readmatrix('turtles.xlsx')
% read the 2,4,6 column 
worst_lx = RemoveNaNValues(data(:,2));
average_lx = RemoveNaNValues(data(:,4));
best_lx = RemoveNaNValues(data(:,6));
% SAVE THE DATA INTO A FILE
save 'clean_turtels.mat' worst_lx average_lx best_lx
