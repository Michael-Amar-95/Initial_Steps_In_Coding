% import file
load ('turtles.mat')
% calculate how much turtles Survived
n_0 = 1e6; % how much turtles born 
Survived = n_0 * best_lx;
% how much died in each year
dx = (-1) * diff(Survived);
x = Age (2:end); 
new_array = x .* dx;
% sum all the value in the array
sum_value = sum(new_array);
%average
D = sum_value / n_0


