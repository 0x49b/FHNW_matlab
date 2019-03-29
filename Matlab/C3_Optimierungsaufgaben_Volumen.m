clearvars;
syms a; syms b; syms x;
v = x*(a-2*x)*(b-2*x)
v1 = diff(v)
ns = solve(v1)
v2 = diff(v,2)
werte = subs(v2,x,ns)
vpa(subs(subs(werte,a,2),b,2),2)
%Erste ns > 0 => Minimum
%Zweite ns < 0 => Maximum (Korrekt)
max = ns(2)
vpa(max,2)