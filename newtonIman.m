%
function [  ] = newtonplot( f, xn, n )
hold on;
syms x;

zeroplot = ezplot(0*x);
set(zeroplot, 'Color', [0,0,0]);
ezplot(f);
colors = hsv(n);

for i=1:n
    fx = subs(f, xn);
    fdiffx = subs(diff(f),xn);
    
    tx = fx +fdiffx *(x-xn);
    p=ezplot(tx);
    set(p, 'Color', colors(i,:));
    
    disp(sprintf('%x: xn = %5.6f f(xn)= %5.10f f1(xn)= %5.6f',(i-1), double(fx), double(fdiffx)));

    xn = xn - (fx/fdiffx);
end


end

