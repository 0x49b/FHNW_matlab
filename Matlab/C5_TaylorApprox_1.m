syms x;
f = 1/x+1/(x^3)
diff(f)
diff(f,2)
ft = taylor(f,'order',3,'expansionPoint',1)
expand(ft)

dr = (ft - f)/f
lbA = solve(dr + 0.2);
lb = lbA(lbA == real(lbA)) %Low boundary
hbA = solve(dr - 0.2);
hb = hbA(hbA == real(hbA))

hold on;
ezplot(f);
set(ezplot(ft),'color','red');
plot(lb,-30:1:50)
plot(hb,-30:1:50)
