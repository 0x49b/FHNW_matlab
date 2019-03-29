clearvars
syms x;
y1=x.^3+1;
y2=(x+4)^2;
%solve
y1a=diff(y1);
y2a=diff(y2);
solve(y1a == y2a,x)

%plot
X = -4:4;
y1m = matlabFunction(y1a);
y2m = matlabFunction(y2a);
plot(X,y1m(X),X,y2m(X))
