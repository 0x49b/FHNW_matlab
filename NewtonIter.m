% NewtonIter
%
% Iteriert die Funktion n mal nach Newton
%
% funktion f
% startwert xn
% anzahl iterationsschritte n

function NewtonIter( f, xn, n )
hold on;
grid on;
syms x;
clc
zeroplot = ezplot(0*x);
set(zeroplot, 'Color', [0,0,0]);
ezplot(f);
colors = hsv(n);

disp('---------------------------');
disp('Newtonverfahren über n Iterationen');
disp('zu gegebenem Startwert xn und Funktion f');
disp('---------------------------');
fprintf('Funktion f:\n');
pretty(f);
disp('---------------------------');
fprintf('Abgeleitete Funktion f°:\n');
pretty(diff(f));
disp('---------------------------');
fprintf('\n');
 
    for i=1:n
        fx = subs(f, xn);
        fdiffx = subs(diff(f),xn);
        tx = fx +fdiffx *(x-xn);
        p=ezplot(tx);
        set(p, 'Color', colors(i,:));
        fprintf('Iteration %u:\n\txn = %12.11f \n\tf(xn)= %12.11f\n\tf°(xn)= %12.11f\n\n',i, double(xn), double(fx), double(fdiffx));
        xn = xn - (fx/fdiffx);
    end
    disp('---------------------------');
  fprintf('Plot anschauen für Details und Skizze.\n');  
end
