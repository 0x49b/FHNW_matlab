clearvars;
syms x;
f = 2*x^3-10
x0 = 1
x1 = x0 - subs(f,x,x0)/subs(diff(f),x,x0)
x2 = x1 - subs(f,x,x1)/subs(diff(f),x,x1)