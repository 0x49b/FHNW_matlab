%1.a)
syms x
f = 2*x^3 -6*x + 1
extremX = double(solve(diff(f)))
extremY = double(subs(f,extremX))
hold on;
ezplot(f)

%1.b)
f2 = 2*x^3 -6*x -5
extremX = double(solve(diff(f2)))
extremY = double(subs(f2,extremX))
ezplot(f2)
axis([-5 5 -5 5])

%3.a)
y = sqrt(sqrt(1-(1/x^3)^2)+1)
y1 = diff(y)
solve(y1)
ezplot(y)
axis([-5 5 -10 10])

%4.a)
clearvars;
syms x 
f=x^3*(x^2-1)*(x-1/2)*(x+1/3)/(x^2+1)^(7/2); 
f1=diff(f); 
extr=double(solve(f1)); 
f2=diff(f,2); 
double([extr, subs(f,x,extr), subs(f2,x,extr)])

f3=diff(f,3)
double(subs(f3,x,extr))
%f3 für x0 nicht 0 -> Grad ungerade -> Sattelpunkt
%Funktion x^7/x^7 -> +-1
%Globales minimum = -1, Maximum = 1 -> Jedoch nie erreicht, da x nie
%unendlich

%4.b)
f=(x^3*(x^2-1)*(x-1/2)*(x+1/3))/(1+x^2)^(5/2)
f1 = diff(f);
extr=double(solve(f1))
extr1=extr(1:5);
f2 = diff(f,2);
double([extr1,subs(f,x,extr1),extr1,subs(f2,x,extr1)])
%Ableitung verschwinden bei x=0
f3 = diff(f,3)
double(subs(f3,x,extr1))
%Sattelpunkt bei x = 1
%Funktion geht gegen unendlich -> kein globales max/min -> Nur +- unendlich

%5
clearvars;
syms x;
x1=1;
y1=0;
x2=2;
y2=0;
d=sqrt((x1-x2)^2+(y1-y2)^2)
y = x
