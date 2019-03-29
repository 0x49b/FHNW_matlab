% Winkel zwischen Kurven
clearvars;
syms x;
f1 = x^2-4
f2 = x^2/2+4
hold on;
X = -10:0.1:10;
plot(X,subs(f1,x,X));
plot(X,subs(f2,x,X));
x2 = solve(f1==f2)
st1 = subs(diff(f1),x,x2)
w1 = double(atan(st1))

st2 = subs(diff(f2),x,x2)
w2 = double(atan(st2))
w = w1-w2;
wdeg = w*180/pi;
wdeg(1)

syms x0;
T1 = subs(diff(f1),x,x0)*(x-x0) + subs(f1,x,x0)
Ts = -1/subs(diff(f1),x,x0)*(x-x0) + subs(f1,x,x0)

%ezplot(subs(T1,x0,4))
plot(X,subs(subs(T1,x0,4),x,X))
plot(X,subs(subs(Ts,x0,4),x,X))
axis([0 20 0 20])