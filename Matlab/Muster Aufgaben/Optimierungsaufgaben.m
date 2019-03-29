clearvars;
syms x;
%Fixer Punkt, von welchem Abstand zur Funktion berechent werden soll
x0 = 1; 
y0 = 1;
f = (x+2).^2
d = sqrt((x-x0)^2+(f-y0)^2)
hold on;
ezplot(f) 
ezplot(d) %Plot Abstandsfunktion

%f > 0, kann unendlich sein
d1 = diff(d)
ns = double(solve(d1))
%Nur reelle Nullstellen! - Extremalstellen

ex = ns(1); %X Cord
ey = double(subs(f,x,ns(1))); %Y Cord
plot(ex,ey,'ro') %Zeige Lokale Extremalstelle Minimum (konkav)

%Abstandsfunktion, Gibt Abstand von x0,y0 zu übergebenem Punkt zurück
dist = double(subs(d,x,ns(1)));
fprintf('Lokale Extremalstelle Minimum: X: %f Y: %f mit dem Abstand %f\n',ex,ey,dist)