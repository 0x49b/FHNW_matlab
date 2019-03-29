f=@(x)(x.^4-1)/(x-1);
%. nach x, damit x auch ein Array sein kann
f(2)
f(1.1)
f(1)
f(0)
f(0.99)

r = [-2:0.01:2];
p=@(x)(x.^5-1)/(x-1);
p(0.999)
plot(r,arrayfun(p,r))

%1
syms x;
limit(x^3+x+1) %a) 1
limit((x^3+x+1)/(x^2+1)) %b 1
limit(sin(10*x)/x) %c 10
limit(sin(10*x)/x^2,x,0,'left') %d -Inf Divergent War NaN
limit(sin(10*x)/x^2,x,0,'right') %d Inf Divergent War NaN
limit((x^3+x+1)/x,x,0,'right') %e Inf Divergent War NaN
limit((x^3+x+1)/x,x,0,'left') %e -Inf Divergent War NaN
limit(abs(x)/x,x,0,'left') %f -1 Divergent War NaN
limit(abs(x)/x,x,0,'right') %f 1 Divergent War NaN

%2
