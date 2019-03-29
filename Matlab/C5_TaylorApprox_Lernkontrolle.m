f=x/(sqrt(1+x^2))
simplify(diff(f))
simplify(diff(f,2))
hold on;
ezplot(f);

ft = taylor(f,'order',3,'expansionPoint',1);
simplify(ft);

set(ezplot(ft),'color','red');

%dis = (ft - f)/f; %Ralf Methode für solve?
d = ft - f;
set(ezplot(d),'color','black');

%clf; %Clear Plot

%set(ezplot(d),'color','black');

dnum = matlabFunction(d+0.1)
%dnum = inline(vectorize(d+0.1)) %ALT

solve(d+0.1)
%solve(d-0.1) %Fehler, daher fzero

fzero(dnum,2) %2 Aus Plot
fzero(dnum,-0.7) %-0.7 Aus Plot
%double(solve(dis + 0.1))