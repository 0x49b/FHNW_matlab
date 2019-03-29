clearvars;
syms a i x;
hold on;
b = 0;
X = [4 4 6 3 7 8];
Y = [3 5 1 5 3 5];
n = 6
d = 0
for i = 1 : n
  d = d + (Y(i) - subs(f,x,X(i)))^2
end
%ezplot(diff(d))
a1 = solve(diff(d)) %Nullstellen finden

scatter(X,Y)

 