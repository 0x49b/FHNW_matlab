syms x;
f = 1+(x-1)^2
g = -1-0.5*(x+1)^2

syms xf, syms xg;

% An welchen Punkt xg ist die Ableitung gleich? -> Abhängig von xf
% Jeweils zwei unterschiedliche x für g und f
xgg = solve(subs(diff(f),x,xf) == subs(diff(g),x,xg),xg)
% Tangente an f konstruieren
Tf = subs(f,x,xf) + subs(diff(f),x,xf) * (x-xf) 
% Wo schneidet Tangente an f die Funktion g?
% Tangente mit xgg muss an gleichen Punkt kommen wie g mit xgg
xf0 = solve(subs(Tf,x,xgg) == subs(g,x,xgg),xf) % xgg enthält xf

% Lösungen in Tangente einfügen
gemTang = subs(Tf,xf,xf0)
vpa(gemTang, 5)

hold on;
ezplot(f)
ezplot(g)
ezplot(gemTang(1))
ezplot(gemTang(2))