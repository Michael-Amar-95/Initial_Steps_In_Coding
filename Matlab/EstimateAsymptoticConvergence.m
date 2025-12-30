function [ est_k, est_noise, index ] = EstimateAsymptoticConvergence(array_1D, eps)
%eps - convergence

% save the last 5 args in the array
fiveLastArgs = array_1D(length(array_1D)-4:end)
% some const value
k = mean(fiveLastArgs)
% distraction
noise = std(fiveLastArgs)
while (true)
    % distance between each value in the array to the k value
    distances = abs(k - array_1D);
    % all the index that have a smaller distance than the noise
    idx = find(distances < noise);
    % save the first element that start to create a stedy phase
    index = idx(1);
    est_k = mean(array_1D(index:end));
    est_noise = std(array_1D(index:end));
    %calculate the convergence
    convergence = (abs(k-est_k))/est_k;
    if convergence < eps
        break
    else
        k = est_k
        noise = est_noise;
    end
end
end

