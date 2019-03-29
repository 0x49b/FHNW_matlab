%Sucht die Tangentengleichung yT, die f an einem durch x0 gegebenen Ort
%berührt
%Funktion f
%x-Wert

function TangenteTngGl(f,x0)
clc;
syms x;
hold on;
grid on;
f1=diff(f,1);
%Tangentengleichung, mit x0 substitutioniert
yt=subs(f1,x0)*(x-x0)+subs(f,x0);
disp('Tangentengleichung');
disp(yt);
ezplot(f);
ezplot(yt);
end