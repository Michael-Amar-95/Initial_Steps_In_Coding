% An array of diffrent population at the first generation 
n_0 = [2 5 8];
capacity = 20;
lamda = 6;
generations = 20;
Nsim = SimulatePopulationBoom(n_0,capacity,lamda,generations);
%difine the step of generation
array_steps = linspace(0,generations,generations+1);
%Draw a plot
plot(array_steps, Nsim, '--o')
% another array of steps \ generations
array_steps2 =  linspace(0, generations, 150);
Nformula = LogisticGrowthMatrix(array_steps2, n_0, capacity, lamda);
%add another plot to the first plot
hold on
plot(array_steps2, Nformula)
xlabel('Generation')
ylabel('Number of Organisms')