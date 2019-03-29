function f = tangente( fun, x0)
%TANGENTE Summary of this function goes here
%   Detailed explanation goes here
syms x;
hold on;

ezplot(fun);
f= simplify(subs(diff(fun),x0)*(x-x0)+subs(fun,x0));
ezplot(subs(diff(fun),x0)*(x-x0)+subs(fun,x0));

end

