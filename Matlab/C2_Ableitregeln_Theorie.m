p = [1 0 -6 3]; 
polyder(p)

syms x 
f=sqrt(x^2+3)/(x^3+3*x+1); 
diff(f) 

subs(f,x,2) % 2 einsetzen
fnum = matlabFunction(f) % symbolisch zu matlabFunc
solve(f) % Nullstellensuche symbolisch
fzero(fnum,2) % Nullstellensuche Startwert numerisch