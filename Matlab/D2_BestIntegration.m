syms x;
f=x^(1/2)+3*x^(-2/5)+x;
int(f)
hold on;
Y = 0:0.1:10;
ezplot(f)
double(int(f,1/4,3))
plot(1/4,Y)
plot(3,Y)