%Berechnet die Potenzreihe in der gegebenen Ordnung für die Funktion f um
%den Punkt x0
%f      Funktion f(x)
%order  Zu berechnende Ordnung
%x0     Entwicklungspunkt
%
%Funktioniert nur in Matlab 2012

function taylorIter(f,order,x0)
warning off;
fprintf('0. Order: %s\n',char(f));
syms x;
for o = 1:order+1
    disp('______________________________________________')
    fprintf('%u. Order: %s',o, char(taylor(f,o,x0)));
    syms m; 
    m=taylor(f,o,x0); 
    pretty(m);
end
end
