function y = newton(f,start,iter)
%Berechnet das Newtonverfahren f�r eine Startwert und eine anzahl runs. 
%Die Funktion muss immer mit x geschrieben werden, da die Ableitung auf x pr�ft

x =  start; % Startwert
j =  iter ; % Anzahl der Durchl�ufe
 
for i = 1:j % Beginn der Schleife
 
    fx =  f;        % Funktion
    dx =  diff(f)  % Ableitung der Funktion
 
    x = x - fx/dx   % Berechnung 
end