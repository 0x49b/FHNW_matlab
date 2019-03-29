clearvars;
syms x;
hold on;

% Prüfung Aufgabe 6
% a)
f = 2-((x-1)^2)/2
g = 4-(x-5)^2

% Plot f und g
X = -8:0.1:10;
plot(X,subs(f,x,X),'r')
plot(X,subs(g,x,X))
axis([-8 7 0 5])
fd = diff(f)
gd = diff(g)

syms x0;
% Tangenten bilden mit Unbekanntem x und x0
tf = subs(diff(f),x,x0)*(x-x0)+subs(f,x,x0)
tg = subs(diff(g),x,x0)*(x-x0)+subs(g,x,x0)

% x0 Anhand von gegebenem Punkt (-6,0) herausfinden
x0f = solve(subs(tf,x,-6),x0)
x0g = solve(subs(tg,x,-6),x0)

% Nur Werte gültig, der grösser als -6 ist -> daher Index (1)
realTf = subs(tf,x0,x0f(1))
realTg = subs(tg,x0,x0g(1))

% Plot
plot(X, subs(realTf,x,X),'r')
plot(X, subs(realTg,x,X))

% Schneidet Tangente an f den Graphen g? Falls ja, so kann der Berg g
% gesehen werden
snx = double(solve(g == realTf))
plot(snx,subs(g,x,snx),'or')

% b)
syms x0, syms x1;
solve(subs(f,x,x0) + subs(fd,x,x0) == subs(g,x,x1) + subs(gd,x,x1)*(x-x1))
x0 = solve(subs(fd,x,x0) == subs(gd,x,x1),x0) % Steigung
x11 = solve(subs(f,x,x0)-subs(fd,x,x0)*x0 == subs(g,x,x1)-subs(gd,x,x1)*x1,x1) % Achsenabschnitt -> Richtiges x1
x00 = subs(x0,x1,x11) % Richtiges x0 
double(x00(2)) %Zwei Lösungen, kleinere zweite interessant
double(x11(2)) %Zwei Lösungen, kleinere interessant

% Einsetzen von x0 und x1
syms x0;
tGem = subs(tf,x0,x00(2))
plot(X,subs(tGem,x,X),'g')
double(solve(tGem)) %Resultat für b