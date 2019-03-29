% DiffGleiIter
%
% y-Wert bestimmen bei einem bestimmten x
% durch schrittweises Vorwärtsrechnen der Differenzengleichung
%
% f = funktion 
% x0 = Startwert x
% y0 = Startwert y
% xval = bestimmtes x der Aufgabenstellung
% schritte = Anzahl Schritte

function DiffGleiIter(f,x0,y0,xval,schritte)

syms x y
x=x0;
y=y0;
%Delta-X (Abstufung)
a=xval/schritte;

%Wieviele Schritte, bis x=2 erreicht?
d=(xval-x0)/a;

for n=0:schritte-1    
    y=y+subs(f,x)*a;
    %x um delta-X erhöhen
    x=x+a;
end
fprintf(' für x=')
disp(xval)
fprintf('Funktion: ')
disp(f)
fprintf('Schritte:')
disp(n+1)
fprintf('y=')
disp(double(y))
end
