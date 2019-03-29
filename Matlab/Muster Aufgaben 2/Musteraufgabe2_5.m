%Fläche zwischen zwei Funktionen
%Mit nur zwei Schnittpunkten
syms x;
f = sqrt(1-x^2)
g = x^2
sn = solve(f == g)
b = double(sn(1))
a = double(sn(2))
H = int(f-g)
%A = H(b) - H(a)
A = double(subs(H,x,b) - subs(H,x,a)) 
hold on;
ezplot(f);
ezplot(g);