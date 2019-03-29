clearvars;
syms x;
format long;
f = sin(x);
g = -1+x^2/16
hold on;
ezplot(f)
ezplot(g)

h = f - g
h2=x-h/diff(h)
set(ezplot(h),'color','r')
x0 = 3.5
n=10
for i = 1 : n
    x0 = double(subs(h2,x,x0));
    X(i,1) = n
    X(i,2) = x0;
    
end
X

hm = matlabFunction(h)
sn(1) = fzero(hm,-5.5)
sn(2) = fzero(hm,-2.5)
sn(3) = fzero(hm,-1)
sn(4) = fzero(hm,3.5)
A1 = abs(double(int(h,sn(1),sn(2))))
A2 = abs(double(int(h,sn(2),sn(3))))
A3 = abs(double(int(h,sn(3),sn(4))))
