clearvars;
syms x
% Wanneninhalt in Abhängigkeit der Seitenlänge x
f=(x-1/2)*(x-3/2)*(x-5/2)*x*(x+1)*(x+2)/(1+x^2)^3; 

% Nullstellen der 1. Ableitung suchen
extremal = sort(solve(diff(f)))

% Wert dieser Nullstellen
extremY = double(subs(f,extremal));

% Bei Nullstellen 2. Ableitung bilden
extremTyp = subs(diff(f,2),x,extremal)

EX = double([extremal, extremY, extremTyp > 0]) % > 0 Minimum
exMin = EX(EX(:, end) == 1, :)
exMax = EX(EX(:, end) == 0, :)

limit(f,x,Inf)
limit(f,x,-Inf)