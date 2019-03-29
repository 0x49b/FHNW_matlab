%Korrekte Lösung
clearvars;
syms x;
f = (x+2)*(x+1)*x*(x-1)*(x-2)
g = -1/2*x^2+1
xs = sort(double(solve(f == g)))
fi = f-g
A = abs(int(fi,xs(1),xs(2))) + abs(int(fi,xs(2),xs(3))) + abs(int(fi,xs(3),xs(4))) + abs(int(fi,xs(4),xs(5)))
vpa(A,6)

hold on;
ezplot(f)
ezplot(g)

%Alternative für Schnittpunkte -> gleich wie f zu g gleichsetzen!
%xs = sort(double(solve(fi)))