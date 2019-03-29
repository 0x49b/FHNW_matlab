%XL=[-20 20];
%fplot(f,XL);
clearvars;

X=-2.5:0.1:1;
f1=@(x)5*x.^4+8*x.^3+3*x.^2+4*x;
f2=@(x)20*x.^3+24*x.^2+6*x+4;
f3=@(x)60*x.^2+48*x+6;
f4=@(x)120*x+48;
f5=@(x)120;
f6=@(x)0;

plot(X,f1(X),X,f2(X),X,f3(X),X,f4(X),X,f5(X),X,f6(X));
axis([-2.5 1 -5 5])


%f1=@(x)polyder([1 2 1 2 0 0]);
syms x
f=(x.^2+2*x)*(x.^3+x);
f1=matlabFunction(diff(f));
f2=matlabFunction(diff(f,2));
f3=matlabFunction(diff(f,3));
f4=matlabFunction(diff(f,4));
f5=matlabFunction(diff(f,5));
f6=matlabFunction(diff(f,6));
plot(X,f1(X),'r',X,f2(X),X,f3(X));
axis([-2.5 1 -5 5])