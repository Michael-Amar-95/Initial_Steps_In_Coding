% An array of diffrent population at the first generation 
n_0 = [2 5 8];
capacity = 20;
lamda = 6;
Generations = 7;
% create a matrix n*m
Nsim = nan(Generations + 1, length(n_0));
% save in the first line the array n_0
Nsim (1, :) = n_0;
% calculate the iteams in each generation
% save in the second (the same idea in the next lines) line 
% the output from DuplicateArrayValues
Nsim (2,:) = NextGenerationArray(Nsim (1, :), capacity, lamda);
Nsim (3,:) = NextGenerationArray(Nsim (2, :), capacity, lamda);
Nsim (4,:) = NextGenerationArray(Nsim (3, :), capacity, lamda);
Nsim (5,:) = NextGenerationArray(Nsim (4, :), capacity, lamda);
Nsim (6,:) = NextGenerationArray(Nsim (5, :), capacity, lamda);
Nsim (7,:) = NextGenerationArray(Nsim (6, :), capacity, lamda);
Nsim (8,:) = NextGenerationArray(Nsim (7, :), capacity, lamda);
%array with values between 0 to length of generations
array_steps = linspace(0,Generations,Generations+1)
%Draw a plot
plot(array_steps, Nsim, '--o')
% another array of steps \ generations
array_steps2 =  linspace(0, Generations, 50);
Nformula = LogisticGrowthMatrix(array_steps2, n_0, capacity, lamda);
%add another plot to the first plot
hold on
plot(array_steps2, Nformula)
xlabel('Generation')
ylabel('Number of Organisms')