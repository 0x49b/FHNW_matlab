clearvars;
format longG;
syms x a b k;

%1
f = a*x;
int(f,1,2)
int(sqrt(x),0,3)
int((1/3)*(x^2)^(1/3),1,3)
int(x^(a+3*b),0,2) % Nicht möglich?
int(x^2/a^2-a/x^2,1,2)
int(x^2/a^2-a/x^2,a,1,2)

%2
f2 = int(2*x-1,1,2)
for i = 1:4
    n = 10.^i;
    s(i,1) = n;
    s(i,2) = double(symsum(1+(2*k)./n,0,n-1)./n);
end
s

%3
f = (x+1)^(1/3)
int(f,0,a)
double(solve(int(f,0,a) == 5/2))
double(int(f,0,2.00342349067747))
double(5/2)

%3
f = 4-x^2
ns = solve(f)
int(f,ns(2),ns(1))

f=4*x^(-2)
int(f,1,4)
%ezplot(f)

%4
f1 = x^2/4
f2 = sqrt(4*x)
int(f1)
int(f2)
sn = solve(f1 == f2)
solve(1/16*x^4-4*x)
hold on;
set(ezplot(f1),'color','red')
ezplot(f2)
abs(int(f1,sn(1),sn(2)) - int(f2,sn(1),sn(2)))
