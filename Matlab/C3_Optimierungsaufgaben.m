% X = 0:0.01:5;
% syms x;
% f = 100/2*x-pi*x^3;
% f1 = matlabFunction(diff(f));
% f2 = matlabFunction(diff(f,2));
% f = matlabFunction(f);
% %, schnitt_t, t1M(schnitt_t), 'or', 'MarkerSize', 18
% plot(X,f(X),'r',X,f1(X),'g',X,f2(X),'b')
% hold on
% ezplot(f1,-2:3)

clearvars;
syms x, syms A;
A = 100;
f = A/2*x-pi*x^3;
f1 = diff(f);
extremalX = sort(solve(f1));
double(extremalX)
extremalY = double(subs(f,extremalX))
%globales maximum
max(extremalY)

f2 = diff(f,2);

hold on
ezplot(f)
ezplot(f1)
ezplot(f2)
axis([-3,3,-200,200]);