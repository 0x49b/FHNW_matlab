clearvars
syms x;
f = (x+2)*(x+1)*x*(x-1)*(x-2)
g = -1/2*x^2+1
hold on;
ezplot(f)
ezplot(g)
sn = sort(double(solve(f == g)))
A = abs(int(f-g,sn(1),sn(2)))+abs(int(f-g,sn(2),sn(3)))+abs(int(f-g,sn(3),sn(4)))+abs(int(f-g,sn(4),sn(5)))
vpa(A,7)