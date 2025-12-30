% This function calculate the yield of the reaction
function [Yield] = ReactionYieldCalculatorFunction(react_grams, react_volume)
%Calculate the molecular mass
M_N = 14;
M_O = 16;
M_2N40 = 2*M_N + 4*M_O;
M_2NO2 = M_N + 2*M_O;
%calculate the number of mols
Mols = react_grams ./ M_2N40;
%calculate the the Mullery concentration 
Cin = Mols ./ react_volume;
% Equilibrium constant
Kc = 4.6e-03;
% Quadratic equation
a = 4;
b = Kc;
c = -Kc * Cin;
x =  (-b + sqrt(b^2 - 4*a*c))/ (2*a) ;
% Mullery concentration of Product
Cout = 2 * x;
% Mols number of Product
Mols_Product = Cout .* react_volume;
% Product mass
Mout = Mols_Product .* M_2NO2;
%calculate the yield of the reaction
Yield = Mout ./ react_grams;