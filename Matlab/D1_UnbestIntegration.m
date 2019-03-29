syms x; syms a;
f = 10*x^0;
int(f)

f = 2*x+1;
int(f)

expand(int(2*x+a,a))

f = x^(3/2) + 2*x + 3*x^(1/2) + 1 + 2*x^(-1/2)
expand(int(f))

int(x^(-2))