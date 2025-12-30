% create an array of cells
titles = {'reactant' 'volume' 'title'}
% create a prompt
input = inputdlg(titles)
% take the first input
MassText = input{1}
% convert the string to nmber. Work also with double!!!!!
Mass = str2num(MassText)
% convert the string to number
rangeOfVolumes = str2num(input{2});
% create an array
Volume = linspace(rangeOfVolumes(1), rangeOfVolumes(2), 101);
% plot the products as fuction of volumes
product1 = ReactionYieldCalculatorFunction(Mass(1),Volume);
plot(Volume,product1)
hold on
product2 = ReactionYieldCalculatorFunction(Mass(2),Volume);
plot(Volume,product2)
product3 = ReactionYieldCalculatorFunction(Mass(3),Volume);
plot(Volume,product3)
% add a title to the plot
title(input{3})
xlabel('Volume')
ylabel('Product/Reactant ratio')
% add legend to the plot
Lgnd = strsplit(MassText)
legend(Lgnd)

