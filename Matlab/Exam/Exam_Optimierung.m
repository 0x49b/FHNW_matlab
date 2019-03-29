% Wanneninhalt in Abhängigkeit der Seitenlänge x

syms x, syms b, syms a;
% Zielfunktion bilden
v = x*(b-2*x)*(a-2*x);

% Nullstellen der 1. Ableitung suchen
extremal = solve(diff(v)) 

% Bei Nullstellen 2. Ableitung bilden
extremTyp = subs(diff(v,2),x,extremal)
% a, b >= 0 -> Beispielwerte einsetzen und 2. Ableitung untersuchen
extremTypMat = matlabFunction(extremTyp)
xExtrem = [extremal, extremTypMat(1,1) > 0] % > 0 Minimum

xMin = xExtrem(1,1) % Nur in diesem Beispiel!
xMax = xExtrem(2,1) % Nur in diesem Beispiel!

% xMax in Zielfunktion einsetzen für max Volumen
subs(v,x,xMax)