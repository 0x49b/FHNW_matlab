% Zeilenarray
x1 = [1,2,3];
x2 = [1 2 3];
a = x1(1,2);
x = -10:0.1:10;

% Spaltenarray
y1 = [4;5;6];
b = y1(2,1);
y2 = (10:-.2:-10)';

% 2d-Matrix
z = [1,2,3;4,5,6;7,8,9;10,11,12];
z1 = [[1,2,3];[4,5,6];[7,8,9];[10,11,12]];
z2=z';

% Funktionen
y = sin(x);
f = cos(x);
g = @(x)(x^.4+3*x.^3+sqrt(1+x.^2));

% Plots
plot(x,y);
hold;
plot(x,f,':r');
axis([0,pi,-2.1,2.1]);
bar(x,f+y,'g');

% Symbolic toolbox
syms x a b c;
p = a*x^2+b*x+c;

%  replace symbolic variables
p1=subs(p,a,1);
p2=subs(p1,b,-2);
p3=subs(p2,c,1);
ezplot(p3)

% Factorisieren
p4 = x^2-2*x+1;
factor(p4)
factor(p3)
p = x^5-2*x^4 -6*x^3 +8*x^2 +5*x -6;
factor(p)

% Nullstellen
ns = solve(p,x);
p = x^6+x^5-2*x^4 -6*x^3 +8*x^2 +5*x -6;
ns = solve(p)
ns = solve(p,'Real',true)

% Vereinfachen
p = x^5-x^4 +2*x^3 +8*x^2 -5*x -6-x^4-8*x^3+10*x;
simplify(p)

% in Funktion transformieren:
f = inline(p);
ezplot(p)
xx=-2.8:0.1:3.2;
plot(xx,f(xx));

% Nullstellen mit numerischem solver:
syms x
f=(x^4-3*x^3+5*x-2*sqrt(1+x^2))*exp(-x^2)
solve(f)
ezplot(f)
f0=inline(vectorize(f));
plot(-10:0.1:10,f(-10:0.1:10))
fzero(f,0)
fzero(f,-1)


