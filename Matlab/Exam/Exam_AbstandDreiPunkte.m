% Abstand zu zwei Punkten
hold on;
clearvars;
syms x;

%Fixer Punkt, von welchem Abstand zur Funktion berechent werden soll
f = (x).^2; %HERE
dgen = @(x0,y0) sqrt((x-x0)^2+(f-y0)^2);
d1 = sym(dgen(0.5,0.5)); %HERE
d2 = sym(dgen(1,-0.5)); %HERE
d3 = sym(dgen(3/2,0)); %HERE
d = d1 + d2 + d3;

h = ezplot(f); 
set(h,'Color','r');
ezplot(d); %Plot Abstandsfunktion

%f > 0, kann unendlich sein
d1 = diff(d)
ns = double(solve(d1))
%Nur reelle Nullstellen! - Extremalstellen

% Lokale Extremalstelle bei Nullstelle
double(subs(diff(d,2),x,ns)) % Zum Test: 2. Ableitung > 0 = Minimum
ex = ns; %X Cord
ey = double(subs(f,x,ns)); %Y Cord
plot(ex,ey,'ro') %Zeige Lokale Extremalstelle Minimum (konkav)

%Abstandsfunktion, Gibt Abstand von x0,y0 zu übergebenem Punkt zurück
dist = double(subs(d,x,ns));

[M,I] = min(dist) % Nullstelle mit kleinstem Abstand herausfinden

fprintf('Kleinste lokale Extremalstelle Minimum: X: %f Y: %f mit dem Abstand %f (%d)\n\n',ex(I),ey(I),dist(I),I)
for i = 1 : size(ns)
    fprintf('%d Lokale Extremalstelle Minimum: X: %f Y: %f mit dem Abstand %f\n',i, ex(i),ey(i),dist(i))
end