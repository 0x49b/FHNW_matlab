% x = Anzunähernde Wurzel
% x0 = Startwert (von hier aus nähern)
function heron2(x, x0)
clc;
disp('Heronverfahren zur Annähherung an eine Quadratwurzel');
disp('a(n+1) = (a(n)+x/a(n))/2');
syms k;
k=0;
ref = sqrt(x);
xn = x0;
fprintf('\nSchritt\tNäherung von xn\t\tNumerischer Fehler\n\n');
fprintf('%d\t%12.11f\t\t%12.11f\n',k,xn,xn-sqrt(x));
n = 0;
while (abs(xn-ref)/ref> eps)
    k = k + 1;
    xn=(xn+x/xn)/2;
    n = n+1;
    fprintf('%d\t%12.11f\t\t%12.11f\n',k,xn,xn-sqrt(x));
end
end
