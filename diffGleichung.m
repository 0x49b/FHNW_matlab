function z = diffGleichung(fun, y0, x0, deltaX, MAX)

g=10.0;
y=y0;
x=x0;

px=[];
py=[];

N = round((MAX-x0)/deltaX);

for i=1:N
    y=y+subs(fun,x)*deltaX;
    x=x+deltaX;
    px=[x px];
    py=[y py];
end
disp('Y');
z=double(y);

plot(px,py);

end
