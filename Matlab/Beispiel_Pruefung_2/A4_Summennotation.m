x = -1:0.1:5;
y = x.^2;
plot(x,y,'*r')

x1 = [0,2,4,5,8,9,13,1024]'; 
sum(x1)
cumsum(x1)

syms k n 
symsum(k^3,0,n) 