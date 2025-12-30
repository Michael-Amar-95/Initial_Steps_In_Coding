x = linspace(0,8,100);
logistic = LogisticPopulationModel(x, 2, 20, 6);
normArr = 2.*(randn(1,100));
ynoise = logistic+normArr;
plot(x, ynoise, '.b');
[est_k, est_noise, idx]  = EstimateAsymptoticConvergence(ynoise, 0.01);
hold on
plot([x(idx), x(end)], [est_k,est_k], '-g');
axis tight;