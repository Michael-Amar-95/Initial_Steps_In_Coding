% clean the memory
clear
clc

% load the data
load ('turtles.mat')

%make series of consecutive numbers between 0 to the size of worst_lx
nums1 = linspace(0, length(worst_lx)-1, length(worst_lx));
%change shape to coloumn array
col_nums1 = reshape(nums1, length(worst_lx), 1);
% concatenate 2 coloumn arrays
two_col_arr1 = [col_nums1 worst_lx]; 

% get details of death rates
[death_rate1, avg_death_rate1, std_death_rate1] = TurtleDeathRateAnalysis(worst_lx);
%make series of consecutive numbers between 0 to the size of first output
nums2 = linspace(0, length(death_rate1)-1, length(death_rate1));
%change shape to coloumn array
col_nums2 = reshape(nums2, length(death_rate1), 1);
% concatenate 2 coloumn arrays
two_col_arr2 = [col_nums2 death_rate1];

%make cells array
cells = {two_col_arr1, two_col_arr2};
%creat plots
TurtleSurvivalPlotFunction(cells, '--b');


%return on the same code for the average_lx
nums3 = linspace(0, length(average_lx)-1, length(average_lx));
col_nums3 = reshape(nums3, length(average_lx), 1);
two_col_arr3 = [col_nums3 average_lx]; 
[death_rate2, avg_death_rate2, std_death_rate2] = TurtleDeathRateAnalysis(average_lx);
nums4 = linspace(0, length(death_rate2)-1, length(death_rate2));
col_nums4 = reshape(nums4, length(death_rate2), 1);
two_col_arr4 = [col_nums4 death_rate2];
cells = {two_col_arr3, two_col_arr4};
TurtleSurvivalPlotFunction(cells, '-r');

%return on the same code for the best_lx
nums5 = linspace(0, length(best_lx)-1, length(best_lx));
col_nums5 = reshape(nums5, length(best_lx), 1);
two_col_arr5 = [col_nums5 best_lx]; 
[death_rate3, avg_death_rate3, std_death_rate3] = TurtleDeathRateAnalysis(best_lx);
nums6 = linspace(0, length(death_rate3)-1, length(death_rate3));
col_nums6 = reshape(nums6, length(death_rate3), 1);
two_col_arr6 = [col_nums6 death_rate3];
cells = {two_col_arr5, two_col_arr6};
TurtleSurvivalPlotFunction(cells, ':k');

%upper plot: titles and legend
subplot(2,1,1);
xlabel("Age");
ylabel("Survival Rate");
legend("worst", "average", "best");

%lower plot: titles and legend
subplot(2,1,2);
xlabel("Age");
ylabel("Death Rate");

%make legends
worstText = ConcatenateWithError('dr(worst)', avg_death_rate1, std_death_rate1);
averageText = ConcatenateWithError('dr(average)', avg_death_rate2, std_death_rate2);
bestText = ConcatenateWithError('dr(best)', avg_death_rate3, std_death_rate3);
legend(worstText, averageText, bestText);

