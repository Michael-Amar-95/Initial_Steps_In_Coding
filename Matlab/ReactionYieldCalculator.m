%arrays of volume
V = linspace(1,3,21);
%calculate the molecular mass
M_N = 14;
M_O = 16;
M_2N40 = 2*M_N + 4*M_O;
M_2NO2 = M_N + 2*M_O;
%mass of reactant
Min = 184;
%calculate the number of mols
Mols = Min / M_2N40;
%calculate the the Mullery concentration 
Cin = Mols ./ V;
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
Mols_Product = Cout .* V;
% Product mass
Mout = Mols_Product * M_2NO2;
%calculate the yield of the reaction
Yield = Mout ./ Min;

%draw the yield as punction of volume
plot(V, Yield)



