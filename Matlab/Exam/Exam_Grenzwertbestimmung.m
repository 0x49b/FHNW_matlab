
% numerische Bestimmung des Grenzwertes 
n = 1:10; 
x = 10.^-n; 
(x-sin(x))./x.^3 

% analytische Bestimmung des Grenzwertes 
syms x 
limit((x - sin(x))./x.^3) % x -> 0
limit((3*x)/(x-2)-(6*(x+2))/(x^2-4),x,2)

% Left, right
clearvars;
syms x;
limit(1/x) %NaN
limit(1/x, x, 0, 'right') %Inf
limit(1/x, x, 0, 'left') %-Inf
limit(1/x, x, Inf) % 0

f = x/abs(x);
limit(f) % NaN
limit(f, x, 0,'right') % 1
limit(f, x, 0,'left') % -1

f = (x^6-x^5-9*x^4+x^3+8*x^2+72*x-72)/(x-1)
limit(f, x, 1)