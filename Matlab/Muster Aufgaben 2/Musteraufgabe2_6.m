clearvars;
syms x; 
f = sqrt(x)
%a)
f1 = taylor(f,'order',2,'expansionpoint',1)
f2 = taylor(f,'order',3,'expansionpoint',1)
f3 = taylor(f,'order',4,'expansionpoint',1)

%b) Spalte 1 = sqrt(2), Spalte 2 = Approximation
A = [sqrt(2), subs(f1,x,2);
sqrt(2), subs(f2,x,2);
sqrt(2), subs(f3,x,2)];
A(:,3) =  abs(A(:,1)-A(:,2)); %Fehler berechnen (delta), Spalte 3
vpa(A,5)