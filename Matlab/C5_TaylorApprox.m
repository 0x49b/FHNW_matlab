syms x;
hold on;
f = (1+x)^(1/3);
ezplot(f)
%taylor(f,'order',n+1,'expansionPoint,x0)

%n = 1, x0 = 0
ap1 = taylor(f,'order',2,'expansionPoint',0) 
set(ezplot(ap1),'color','green')

%n = 2, x0 = 0
ap2 = taylor(f,'order',3,'expansionPoint',0) 
set(ezplot(ap2),'color','red')

%n = 10, x0 = 0
ap10 = taylor(f,'order',11,'expansionPoint',0) 
set(ezplot(ap10),'color','black')
axis([-6 6 -6 2])
