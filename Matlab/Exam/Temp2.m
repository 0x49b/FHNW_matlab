clearvars;
syms x;
f = (x^2+x)*exp(-x/2)
ezplot(f)
solve(f)
solve(exp(-x/2))
ezplot(exp(-x/2))
limit(f,x,Inf)
limit(f,x,-Inf)
