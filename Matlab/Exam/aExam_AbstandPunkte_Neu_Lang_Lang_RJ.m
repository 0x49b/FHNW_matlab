% Untersuchen Sie numerisch, bei welchem der unten aufgeführten Punkte
% der Graph der Funktion f am näcshten kommt

syms x;
format long;

g = -4-(x^2-1)*(x-2)*(x+4)
f = 3+(x^3-2)*(x-1)*(x+3); %HERE
hold on;
ezplot(f)
ezplot(subs(g,x,x+1))

double(solve(diff(f) == diff(g)))
    
    % Abstandsfunktion
    d = sqrt((x-(x+1))^2 + (f-subs(g,x,x+1))^2) %HERE-ACHTUNG +1!

    % Nur reele Nullstellen - Extremalstellen
    Nullstellen_X = sort(double(solve(diff(d))));
    Nullstellen_Y = double(subs(f,x,Nullstellen_X));

    % Nullstellen in f einsetzten damit man die Distanz erhält
    Abstand = double(subs(d,x,Nullstellen_X));

    % Nullstelle mit kleinstem Abstand herausfinden
    [Value,Index] = min(Abstand); 

    %fprintf('Punkt (%f, %f):\n', x0, y0);
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
    
    fprintf('\n\n');


