syms x;
f = x+0.5;
g = -x^2+0.5
A = -1:4;
xs = solve(g == f)
hold on;
ezplot(g)
ezplot(f)
A1 = int(f-g,x,-2,1)
A2 = int(g-f,x,-1,0)
A = A1+A2
A = abs(int(g-f,x,-2,1)) + abs(int(g-f,x,-1,0))
A = abs(int(f-g,x,-2,1)) + abs(int(f-g,x,-1,0))