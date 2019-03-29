function DistPntFct(f, x1, y1)
%DistPntFct
%Ermittelt Punkt auf Funktion mit minimalem Abstand zum Punkt P
%f = Funktion
%x1 = x-Koordinate des Punktes P
%y1 = y-Koordinate des Punktes P
%Dominik Meyer, 2013, V Beta

clc
syms x
disp('---------------------------');
disp('Interpretiere Verhältnis');
disp('von Punkt P zu Funktion f');
disp('---------------------------');
disp('Gegebene Funktion f:');
disp(f);
fprintf('Gegebener Punkt P: (%d|%d)\n',x1,y1);
disp('---------------------------');
disp('Abstandsformel eingesetzt:');
d=sqrt((x1-x)^2+(y1-f)^2);
pretty(d);
d1=diff(d);
fprintf('\nNullstellen (inkl Imaginäre):\n');
n=solve(d1);
disp(double(n));
disp('y-Werte an Nullstellen (inkl Imaginäre):');
disp(double(subs(f,x,n)));

disp('Reelle Punkte auf f und deren Distanz zu P (grün)');
figure;
hold on;
ezplot(f);
grid on;
plot(x1,y1,'r*');
title('Punkt P mit minimalem Abstand zu f');
for j=1:length(n),
    if isreal(n(j))
        dist=sqrt((x1-n(j))^2+(y1-subs(f,x,n(j)))^2);
        plot(double(n(j)),double(subs(f,x,n(j))),'+g');
        fprintf('Punkt %d: (%f|%f) Distanz: %f LE\n',j,double(n(j)),double(subs(f,x,n(j))),double(dist));        
    end
end
disp('---------------------------');
end

