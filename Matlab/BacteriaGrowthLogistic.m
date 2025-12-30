% Class demonstration
% d1bacteria.m calculate barteria growth
%
% input data
days = 2;
divisionMinutes = 20;
bacteriaSize = 0.5e-6;
n0 = 1;
lamda = 2;
capacity = 1e13;
% unit conversion
minutes = days*24*60;
bacteriaVolume = bacteriaSize^3;
% calculate growth
generations = minutes/divisionMinutes; % number of steps
bacteriaNumber = LogisticPopulationModel(generations, n0, capacity, lamda) % apply growth formula
totalVolume = bacteriaNumber*bacteriaVolume; % total volume of organisms
% convert to Km3
TwoDaysCm3 = totalVolume*(100^3)



days = 0.5;
divisionMinutes = 20;
bacteriaSize = 0.5e-6;
n0 = 1;
lamda = 2;
capacity = 1e13;
% unit conversion
minutes = days*24*60;
bacteriaVolume = bacteriaSize^3;
% calculate growth
generations = minutes/divisionMinutes; % number of steps
bacteriaNumber = LogisticPopulationModel(generations, n0, capacity, lamda) % apply growth formula
totalVolume = bacteriaNumber*bacteriaVolume; % total volume of organisms
% convert to Km3
HalfDaysCm3 = totalVolume*(100^3)