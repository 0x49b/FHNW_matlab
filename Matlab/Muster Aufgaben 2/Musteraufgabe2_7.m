%Newton 7
clearvars;
syms x;
f=(x-1)^2/2-1
xn = 2
A(1,1) = xn
for i = 1:5 
    xn = xn - subs(f,x,xn)/subs(diff(f),x,xn);
    A(i+1,1) = xn;
end
vpa(A,16)
