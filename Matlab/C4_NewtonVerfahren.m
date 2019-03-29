clearvars;
format long
syms x
f=sin(5*((1+x^2)^(1/2)));
g=x-f/diff(f)
simplify(g)
x0=-2 %Startwert kann beliebig gew�hlt werden, je nachdem vor oder nach Nullstelle
x1 = subs(g,x,x0) %x0 in g einsetzen -> 3/2
x2 = subs(g,x,x1)
x3 = subs(g,x,x2)
x4 = subs(g,x,x3)
x5 = subs(g,x,x4)
x6 = subs(g,x,x5)
x7 = subs(g,x,x6)
x8 = subs(g,x,x7)

f=x^2-2
g=x-f/diff(f)
x0 = 1
n=10
for i = 1 : n
    x0 = double(subs(g,x,x0));
    X(i,1) = x0;
end
X
%ezplot(x^2-2)



