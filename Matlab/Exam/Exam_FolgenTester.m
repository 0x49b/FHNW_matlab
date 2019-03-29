%Eigenschaften von Folgen
% Musteraufgaben 6) Folgaben xn
xn = @(n) 10*((-1)^n+2)/(n+1);
arrayfun(xn,[1:1000])

X = 1:20
%an = @(n)-2+1/5*(1+n).^(-4/3)
%arrayfun(an,X)
%plot(X,an(X))

% Musteraufgaben 6) Folgen yn
hold on;
% 1 Ansatz mit anonymous function und Arrayfun - Korrekt gem. Lösung
yn = @(n)(-1).^n.*(sqrt(2+n)./(1+n))
Y=arrayfun(yn,X)
plot(X,Y,'g') % Grün

% 2 Ansatz mit anonymous function mit Parameter - Gleich wie 3
yn = @(n)(-1).^n.*(sqrt(2+n)./(1+n))
plot(X,yn(X),'r') % Rot

% 3 Ansatz mit symbolischer Funktion - Gleich wie 2
n = X;
yn = (-1).^n.*(sqrt(2+n)./(1+n))
plot(X,yn,'b') % Blau