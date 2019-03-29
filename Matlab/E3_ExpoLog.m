x=rand(10,1)
y=exp(x)
x=10*x;
y


syms x;
% Lernkontrolle 4
solve(exp(x^2-2*x)==2)
vpa(solve(x^2-2*x-log(2)),2)

% Aufgabe 11
f = (x^2-2*exp(-(x^2)/2)+1)/(x^2+x+1)
ns = solve(f); % Nullstellen
double(ns)
hold on;
ezplot(f)

fd = diff(f)
% Extremalstellen Min/Max
extr = solve(fd) % solve nur eine Extremalstelle
extr1 = fzero(matlabFunction(fd),-0.1) % Aus plot
extr2 = fzero(matlabFunction(fd),-2) % Aus plot
vpa(subs(diff(fd),x,extr1),5) % > 0 konvex Minimum
vpa(subs(diff(fd),x,extr2),5) % < 0 konkav Maximum
plot(double(ns),subs(f,x,double(ns)),'o')
plot(extr1,subs(f,x,extr1),'o')
plot(extr2,subs(f,x,extr2),'o')

% Wendepunkte
fdd = matlabFunction(diff(fd))
wende1 = fzero(fdd,-4)
wende2 = fzero(fdd,-1)
wende3 = fzero(fdd,1)
plot(wende1,subs(f,x,wende1),'rp')
plot(wende2,subs(f,x,wende2),'rp')
plot(wende3,subs(f,x,wende3),'rp')