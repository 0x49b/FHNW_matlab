%Taylorapprximation für bestimmten Wert
%Funktion               f (im Format f=...)
%Ordnung                order
%Entwicklungspunkt      x0
%Einzusetzender Wert    xval (welchem Wert sollen wir uns nähern, resp
%durch was wird x ersetzt?
%Ursprung               org (Wert, mit dem verglichen werden soll)
%
%Funktioniert nur in Matlab 2012

function taylorDiff(f,order,x0,xval, org)
syms x;
disp('Order   Näherung     Diff');
for o = 2:order+1
    t=taylor(f,o,x0);
    n=subs(t,x,xval);
    disp(sprintf('%u       %f     %f',(o-1), n, org-n));
end
end