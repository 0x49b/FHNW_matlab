%Nicht garantiert richtig!
clearvars;
syms x; syms xf; syms xg;
f = -1-(x+2)^4
g = 1-(x-1)^2
%1 Wo Ableitung 1 gleich?
xgg = solve(diff(subs(f,x,xf)) == diff(subs(g,x,xg)),xg)

%2 Tangente an f konstruieren mit xf
Tf = diff(subs(f,x,xf))*(x-xf)+subs(f,x,xf)

%3 Wo schneidet diese Tangente g in xgg? (xgg auch auf Tf!)
xff = solve(subs(Tf,x,xgg) == subs(g,x,xgg))

%4 Gemeinsame Tangente konstruieren
gemT = subs(Tf,xf,xff)

%Basis Fläche
tf = gemT(2)

%Schnittpunkte f und tf
stf = real(solve(tf == f))
s1 = stf(2)

stg = real(solve(tf == g))
s2 = stg(1)

sgf = real(solve(f == g))
s3 = sgf(1)

%Fläche berechnen
A = abs(int(tf-f,s1,s3)) + abs(int(tf-g,s3,s2))

hold on;
h = ezplot(f);
set(h,'Color','r');
ezplot(g)
%ezplot(gemT(1))
ezplot(tf)
plot(s1,subs(tf,x,s1),'go') %Green dot
plot(s2,subs(g,x,s2),'o') %Blue dot
plot(s3,subs(g,x,s3),'ro') %Red dot