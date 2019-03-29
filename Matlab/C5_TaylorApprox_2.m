syms x;
f = (1-x)^(2/3)
fd = diff(f)
fd2 = diff(f,2)
fd3 = diff(f,3)
subs(fd3,x,0)
X = [0, 1/8, 1/4 , 3/8, 1/2, 5/8, 3/4];
ft = taylor(f,'order',4,'expansionPoint',0);
d = double(subs(ft,x,X) - subs(f,x,X))
ft = taylor(f,'order',4,'expansionPoint',1/2);
d = double(subs(ft,x,X) - subs(f,x,X))

hold on;
ezplot(f);
set(ezplot(ft),'color','red');
