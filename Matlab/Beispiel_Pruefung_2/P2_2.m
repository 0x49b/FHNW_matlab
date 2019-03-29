clearvars;
syms x;
%c
f = x+1/sqrt(x)+sqrt(x);
expand(int(f))
int(f,1,9)
