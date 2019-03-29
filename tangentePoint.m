function [] = tangentePoint(fun, x,y)
%TANGENTEPOINT Summary of this function goes here
%   Detailed explanation goes here

syms x0 t;

null = solve(diff(fun)*(x-x0)+fun-y);

for i=1:size(null)
    t=[t;tangente(fun, null(i))];   
end

t(1) = [];

for j=1:size(t)
    fprintf('Tangente %i:  ',j);
    disp(t(j));
end

end

