f = x^3
x0 = 2
t = subs(diff(f),x,x0)*(x-x0)+subs(f,x,x0)
hold on;
X = [-5:0.01:5]
plot(X,subs(f,x,X))
plot(X,subs(t,x,X),'r')
solve(t == f)