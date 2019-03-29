% Berechnen Sie bei welchem Punkt (x,y) auf dem Graphen der Funktion f
% der Abstand zum Punkt (1,1) minimal ist. 
syms x;
format long;

% Vorgaben:
f=(x+2)^2;
x0=1;
y0=1;

% Abstandsfunktion
d=sqrt((x-x0)^2+(f-y0)^2);

% Nur reele Nullstellen
Nullstellen_X = sort(double(solve(diff(d))));
Nullstellen_Y = double(subs(f,x,Nullstellen_X));

% Nullstellen in f einsetzten damit man die Distanz erhält
Abstand = double(subs(d,x,Nullstellen_X));

% Nullstelle mit kleinstem Abstand herausfinden
[Value,Index] = min(Abstand); 

fprintf('Kleinste lokale Extremalstelle Minimum: X: %f Y: %f mit dem Abstand %f (%d)\n',Nullstellen_X(Index),Nullstellen_Y(Index),Abstand(Index),Index)

fprintf('\nReele Nullstellen:\n');
count = 1;
for i = 1 : size(Nullstellen_X)
    if ~isreal(Nullstellen_X(i)) 
        continue
    end
    fprintf('%d Lokale Extremalstelle Minimum: X: %f Y: %f mit dem Abstand %f\n',count, Nullstellen_X(i),Nullstellen_Y(i),Abstand(i))
    count = count + 1;
end

fprintf('\nKomplexe Nullstellen:\n');
count = 1;
for i = 1 : size(Nullstellen_X)
    if isreal(Nullstellen_X(i)) 
        continue
    end
    fprintf('%d Lokale Extremalstelle Minimum: X: %f Y: %f mit dem Abstand %f\n',count, Nullstellen_X(i),Nullstellen_Y(i),Abstand(i));
    count = count + 1;
end