function y = newton(f,start,iter)
%Berechnet das Newtonverfahren für eine Startwert und eine anzahl runs. 
%Die Funktion muss immer mit x geschrieben werden, da die Ableitung auf x prüft

x =  start; % Startwert
j =  iter ; % Anzahl der Durchläufe
 
for i = 1:j % Beginn der Schleife
 
    fx =  f;        % Funktion
    dx =  diff(f)  % Ableitung der Funktion
 
    x = x - fx/dx   % Berechnung 
end