%6
syms t;
y = 1/2*sin(t)*cos(2*t)
diff(y)

%8.
f=@(x)(sin(x)-x/sqrt(2))
fzero(f,0)
x1 = fzero(f,pi)
F = abs(x1^2/(2*sqrt(2))+cos(x1)-1) %von hand integriert
ezplot(f)
%9. Taylor
%a
x=(4*pi)/5
an = x-x^3/factorial(3)
sin(x)

%b
x=pi/5
an = x-x^3/factorial(3) %EXAKTER!

%c
%Periode = 2pi
count = mod(1000,2*pi) %Restbetrag = Start
x = count;
syms k;
an = vpa(symsum((-1)^k/factorial(2*k+1)*x^(2*k+1),0,1) ,10)
sin(1000)


%10
clearvars;
syms x;
x0 = pi/2
t = sin(x0)*cos(2*x0) + (-1/2*cos(-x0)+3/2*cos(3*x0))*(x-x0) + (-1/2*sin(-x0)-9/2*sin(3*x0))/2*(x-x0)^2
vpa(t,3)
t2 = -1+5/2*(x-pi/2)^2
X = [0:10]
v(:,1) = X
v(:,2) = subs(t,x,X);
v(:,3) = subs(t2,x,X);
v
