clear 
% Import inpormation from columns to the arguments
[year, January , February] = readvars('births.xls');
%Draw a plot with circle=O and in color red=r
plot(year, January, 'or') 
hold on
% s - rectangle, b - blue
plot(year, February, 'sb')
% Calculate the avg for each two closed values 
av_year = d4running_average(year);
av_jan = d4running_average(January);
hold on 
%Draw plots in several pormat. (-. = pink) 
plot(av_year, av_jan, '-.m')
av_feb = d4running_average(February);
plot(av_year, av_feb, '--c')
%Add title to exis y and x
hold on
xlabel('Years')
ylabel('Births')
% Add title to the plot
title('Number of births ')
% ADD legend to the plot 
legend('January', 'February', 'Smoothed Jen', 'Smoothed Feb')