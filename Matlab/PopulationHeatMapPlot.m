function [handle] = PopulationHeatMapPlot(structer, generationSize)
% This function draw a heat map accordine to the size of each generation
% N0 = An array of diffrent population at the first generation 
% K = capacity
% lamda = the growth factor
% Generation = num of genetration
% generationSize = the size of each generation
n_0 = structer.N0; 
k = structer.K;
lamda = structer.lamda;
generation = structer.Generation;

% duplicate the last column and the last line
generationSize = ExtendMatrixEdges(generationSize);
% save coordinate system as struct!!!!!!
handle = axes;

% create indexes for axis y
yaxis = linspace(0,generation + 1, generation + 2);
% create indexes for axis x
xaxis = [n_0 n_0(end)+1];

pcolor(xaxis, yaxis,generationSize)

% change the color of the map
colormap jet 
% add legend to the map
colorbar

% add members to the struct add input values inside them
handle.XTick = xaxis(1:end-1);
handle.YTick = yaxis(1:end-1);

hold on
xlabel('Initial population')
ylabel('Time steps')
title = ['lamda = ' num2str(lamda) ', K = '  num2str(k)];
sgtitle(title)
end

