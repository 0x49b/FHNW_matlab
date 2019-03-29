clearvars;
syms x;
mF = @(in)matlabFunction(in);
y=3*x-1;
yM = mF(y);
f=x.^2-2*x-1;
fM = mF(f);
%1. Zwei Schnittpunkte
SCHNITT = solve(f == y,x)

%2. Differentialquotient von f in Punkt x0
faM = mF(diff(f))
faM(SCHNITT) % anwenden auf zwei Schnittpunkte

%3. Tangente bilden
t = @(ifM,x0) faM(x0) * (x-x0)+ifM(x0)
t1 = t(fM,SCHNITT(1))
t2 = t(fM,SCHNITT(2))

%4. Schnittpunkte Tangenten
schnitt_t = solve(t1 == t2,x)

%Plot it!
t1M = mF(t1);
t2M = mF(t2);
X = -3:0.5:9;

plot(X,yM(X),X,fM(X),X,faM(X),X,t1M(X),X,t2M(X), schnitt_t, t1M(schnitt_t), 'or', 'MarkerSize', 18)
%axis([0 10 0 10])
