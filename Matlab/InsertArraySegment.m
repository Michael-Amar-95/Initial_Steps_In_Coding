function [array_1D] = InsertArraySegment (a,b,n)
array_1D = [a(1:n) b a(n +1 :end)];
end

