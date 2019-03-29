f = (x^6-x^5-9*x^4+x^3+8*x^2+72*x-72)/(x-1);
simplify(f)
xl = 1;
limit(f,x,xl)

% Von Hand lösen: Linearfaktor (x-1) ausklammern
% Bzw simplify
f1 = simplify(f)

% x ersetzen mit xl
subs(f1,x,xl)