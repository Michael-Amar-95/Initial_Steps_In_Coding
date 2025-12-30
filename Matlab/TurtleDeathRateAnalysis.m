function [death_rate, avg_death_rate, std_death_rate] = TurtleDeathRateAnalysis(turtles)
% turtles - array of turtles that survive each year
% this function sets details for the turtles death rate 

% calculate numbers of turtles which died every year
deads = abs(diff(turtles));
% calculate the death rate by dividing the numbers of dead by the numbers
% of lives each year
death_rate = deads ./ turtles(1:length(turtles)-1);
%claculates the average of the death rate
avg_death_rate = mean(death_rate(8:end));
%claculate the std of the death rate
std_death_rate = std(death_rate(8:end));
end

