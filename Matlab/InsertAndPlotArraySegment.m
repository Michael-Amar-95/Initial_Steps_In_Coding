x = linspace(0, 10 ,51);
y = x .* sqrt(x + 4);
plot(x,y)
a = y(10)
A(1:5) = a;
z = exam(y,A,10);
t = linspace(0,11,56);
hold on
plot(t, z)