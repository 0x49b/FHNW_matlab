% Berechnen Sie bei x0 die Tangente an die Funktion
clearvars;
hold on;
syms x;
f = 2-((x-1)^2)/2
g = 4-(x-5)^2
X = -8:0.1:10;

plot(X,subs(f,x,X),'r')
plot(X,subs(g,x,X))
axis([-8 7 0 5])
fd = diff(f)
gd = diff(g)

syms x0;
% Tangenten bilden mit Unbekanntem x und x0
tf = subs(fd,x,x0)*(x-x0)+subs(f,x,x0)
tg = subs(gd,x,x0)*(x-x0)+subs(g,x,x0)

% x0 Anhand von gegebenem Punkt (-6,0) herausfinden
x0f = solve(subs(tf,x,-6))
x0g = solve(subs(tg,x,-6))

% Tangenten konstruieren mit x0
realTf = subs(tf,x0,x0f(1))
realTg = subs(tg,x0,x0g(1))
plot(X, subs(realTf,x,X),'r')
plot(X, subs(realTg,x,X))

syms x01; syms x02,
% b Wie Nahe: Tangente g schneidet f
x1 = solve(subs(tf,x0,x01) == subs(tg,x0,x02)) % An Punkt x1 sind Tangenten gleich (x01 und x02)
x01a = solve(subs(subs(tf,x0,x01),x,x1)) % x1 in Tangente f einsetzen -> muss 0 ergeben -> erhält x01
x1a = subs(x1,x01,x01a) % x nur noch von x02 abhängig
x02 = solve(subs(subs(tf,x0,x02),x,x1a)) % x1a und x02 in Tangente g einsetzen -> muss 0 ergeben -> erhält x02

x2a = subs(x1,x01,x01a) % x nur noch von x02 abhängig
%x01 = 

x2 = solve(subs(tf,x0 == subs(tg,x0,x01)))
double(subs(f,x,x2))