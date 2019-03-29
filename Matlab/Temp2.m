g = -4-(x^2-1)*(x-2)*(x+4)
f = 3+(x^3-2)*(x-1)*(x+3); %HERE
solve(diff(subs(g,x,x+1)) == diff(subs(f,x,x)))