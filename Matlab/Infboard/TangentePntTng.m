%Gibt eine Tangente, welche an f anliegt und durch P geht (P liegt nicht
%auf Tangente P)
%Funktion f
%x von P
%y von P
function TangentePntTng(f,x,y)
clc;
syms x1;
disp('Gegebene Funktion f:');
disp(f);
disp('Abgeleitete Funktion f°:');
f1=diff(f);
disp(f1);
ex=solve((subs(diff(f),x1)*(x-x1) + subs(f,x1)-y));
figure;
hold on;
grid on;
plot(x,y,'*r');
pl=ezplot(f);
set(pl,'Color','g');
for i=1:size(ex)
    fprintf('Punkt %d: x=%f y=%f\n',i,double(ex(i)),double(subs(f,ex(i))));
    plot(double(ex(i)),double(subs(f,ex(i))),'+b');
end
end