function [ est_k, est_noise, index ] = EstimateAsymptoticValue(array_1D, k,noise)
% distance between each value in the array to the k value)
distances = abs(k - array_1D);
% all the index that have a smaller distance than the noise
idx = find(distances < noise);
% save the first element that start to create a stedy phase
index = idx(1);
est_k = mean(array_1D(index:end));
est_noise = std(array_1D(index:end));
end

