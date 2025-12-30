params = struct('Generation', 20,  'N0' ,[3 6 9 12 15], 'K', 60 ,'lamda', 7);
Population = SimulateAndPlotPopulationHeatMap(params);
Handle = PopulationHeatMapPlot(params, Population);