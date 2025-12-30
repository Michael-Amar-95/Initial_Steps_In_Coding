%Import data from turtles
load turtles.mat
%Calculate the diffrent between two details in the array
dx = abs(diff(best_lx));
% Create a plot with two Coordinate system
 % First index - num of rows, Second - num of columns, Third - on which 
 % coordinate system we look. rows*col = how much coordinate system we will
 % get
%Focus in the first coordinate system
subplot(2,1,1)
semilogy(Age, best_lx, '-.b');
%Focus in the second system
subplot(2,1,2)
semilogy(Age(2:end), dx, '-.b');

%Calculate the diffrent and use abs function to get a positive value
dx = abs(diff(average_lx));
% Fix the array of age to be in the length like average_lx array
Age = d3array_cut(Age, average_lx);
subplot(2,1,1)
hold on
semilogy(Age, average_lx, '-g');
subplot(2,1,2)
hold on
semilogy(Age(2:end), dx, '-g');

%Calculate the diffrent and use abs function to get a positive value
dx = abs(diff(worst_lx));
% Fix the array of age to be in the length like average_lx array
Age = d3array_cut(Age, worst_lx);
subplot(2,1,1)
hold on
semilogy(Age, worst_lx, '--k');
subplot(2,1,2)
hold on
semilogy(Age(2:end), dx, '--k');

%Add anotation to the plots
subplot(2,1,2)
legend('best','average', 'worst');
% Give name to axis y and x
subplot(2,1,1)
ylabel('survival probability')
subplot(2,1,2)
ylabel('deth probability/year')
xlabel('turtle age[years]')
% Give a title
sgtitle('Data file: turtles.mat')



























