% create an array with 100 values
x = linspace(0,8,100);
logistic = LogisticPopulationModel(x, 2, 20, 6);
% size(x) - give me the dimension of x
% create an array in dimension of x with values that have
% garcian distribution around zero. I multiplicate by 2 so the width will
% be 2
normArr = 2.*(randn(size(x)));
ynoise = logistic+normArr;
plot(x, ynoise, '.b');
[est_k, est_noise, idx]  = EstimateAsymptoticValue(ynoise, mean(ynoise), std(ynoise));
hold on
% draw a line from x(idx) to x(end) with high [est_k,est_k]
plot([x(idx), x(end)], [est_k,est_k], '-g');
[est_k2, est_noise2, idx2] = EstimateAsymptoticValue(ynoise, est_k, est_noise);
plot([x(idx2), x(end)], [est_k2, est_k2], '-k');
axis tight;