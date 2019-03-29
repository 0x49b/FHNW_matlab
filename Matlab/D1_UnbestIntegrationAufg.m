syms a; syms x; syms b; syms c;
expand(int(a*x,x))
expand(int(sqrt(x)))
expand(int(1/(3*(x^2)^(1/3)))) %-
expand(int(x^(a+3*b),x))
expand(int(x^2/a^2-a/x^2,x))
expand(int(x^2/a^2-a/x^2,a))

f = expand(int(-1/x^2+x));
f = f + c
stamm = solve(subs(f,x,1) == 1,c)