%Create 4 coordinate systems
subplot(2,2,1)
% create an array with 20 values from 1 to 50
V = linspace(1,50, 20)
yield = ReactionYieldCalculatorFunction(100, V)
% Draw on the first plot
subplot(2,2,1)
plot(V, yield)
xlabel('Volume')
ylabel('Product/reactant ratio')
title('Product/reactant vs. volume (L)')
%Fix the boundary of the draw
axis tight
% Focus on the third system
subplot(2,2,3)
loglog(V, yield)
xlabel('Volume(log)')
ylabel('Product/reactant ratio(log)')
title('Product/reactant vs. volume (L)')
axis tight

%From here the volume is scalar and the grams are array
Volume = 2;
Grams = linspace(1,100,20)
yield2 = ex4_3react(Grams, Volume);
% Draw on the second plot
subplot(2,2,2)
plot(Grams, yield2)
xlabel('Reactor mass')
ylabel('Product/reactant ratio')
title('Product/reactant vs. reactor mass(g)')
%Fix the boundary of the draw
axis tight
% Focus on the third system
subplot(2,2,4)
loglog(Grams, yield2)
xlabel('Reactor mass(log)')
ylabel('Product/reactant ratio(log)')
title('Product/reactant vs. reactor mass(g)')
axis tight

%Add a title to the all system
sgtitle('equilibrium reaction')