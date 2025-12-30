n_0 = 1;
capacity = 6;
lamda = 5;
Generations = 7;
Nsim = nan(1, Generations + 1);
%calculate the iteams in each generation
Nsim(1) = n_0;
Nsim(2) = NextGenerationPopulation(Nsim(1), capacity, lamda);
Nsim(3) = NextGenerationPopulation(Nsim(2), capacity, lamda);
Nsim(4) = NextGenerationPopulation(Nsim(3), capacity, lamda);
Nsim(5) = NextGenerationPopulation(Nsim(4), capacity, lamda);
Nsim(6) = NextGenerationPopulation(Nsim(5), capacity, lamda);
Nsim(7) = NextGenerationPopulation(Nsim(6), capacity, lamda);
Nsim(8) = NextGenerationPopulation(Nsim(7), capacity, lamda);
%array with values between 0 to length of generations
array_steps = linspace(0,Generations,Generations+1)
%Draw a plot
plot(array_steps, Nsim)
% another array of steps \ generations
array_steps2 =  linspace(0, Generations, 50);
Nformula = LogisticPopulationModel(array_steps2, n_0, capacity, lamda);
%add another plot to the first plot
hold on
plot(array_steps2, Nformula)
