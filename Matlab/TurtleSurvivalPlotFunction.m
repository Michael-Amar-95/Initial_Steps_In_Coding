function TurtleSurvivalPlotFunction(params_axis, details_axis)
%this function shows on 2 plots the survivles details and death rate
%details of turtles
% Note: this function do not return any value, only show plots!
% params_axis contain two cells. The first cell have the params for x_axis,
% and the second cell have the params for the y_axis.
% details_axis have the information about the plot 
%extract the parameters of the axis from the input arguments
x1_y1 = params_axis{1};
x1 = x1_y1(:, 1);
y1 = x1_y1(:, 2);
x2_y2 = params_axis{2};
x2 = x2_y2(:, 1);
y2 = x2_y2(:, 2);

%open 2 plots, one above each other
subplot(2,1,1);
plot(x1, y1, details_axis);
hold on
subplot(2,1,2);
plot(x2, y2, details_axis);
hold on

end

