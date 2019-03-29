% Berechnen Sie bei x0 die Tangente an die Funktion
clearvars;
hold on;
syms x;
f = 2-((x-1)^2)/2
g = 4-(x-5)^2

ezplot(f)
ezplot(g)
fd = diff(f)
gd = diff(g)

syms x0;

tf = subs(fd,x,x0)*(x-x0)+subs(f,x,x0)
tg = subs(gd,x,x0)*(x-x0)+subs(g,x,x0)
x = -6; % here
y = 0;
ttf = solve(subs(tf,x,-6))
ttg = solve(subs(tg,x,-6))

