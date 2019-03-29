clearvars;
format longG;
syms x k;
b = 1;
a = -1;
f= 2/(1+x^2);
f2 = int(f,-1,1)


for i = 1:3
    n = 10.^i;
    s(i,1) = n;
    dx = (b-a)/n;
    xk = a+k*dx;
    %s(i,2) = double(symsum(2./(1+(-1+(2.*k).^2./n)),1,n-1).*(2./n));
    s(i,2) = double(symsum(subs(f,x,xk),0,n-1)*dx);
end
s
