function Exam_GemeinsameTangente(f,g)

syms x;
syms xf xg x0;
ftxf=taylor(f,'expansionPoint',xf,'order',2);
gtxg=taylor(g,'expansionPoint',xg,'order',2);
gl1=subs(ftxf,x,0)-subs(gtxg,x,0);
gl2=diff(ftxf,x)-diff(gtxg,x);
xgxf=solve(gl2,xg);
h=subs(gl1,xg,xgxf);
xfk=double(solve(h,xf));


countReal = 0;
for i = 1 : (length(xfk))
    if(isreal(xfk(i)))
        countReal = countReal + 1;
    end
end

%plotting
cc=hsv(countReal + 2);
legendset = {};
hold on;

%plot functions
q=ezplot(f);
set(q,'color',cc(1,:));
legendset = [legendset; sprintf('f(x) = %s', char(f))];

p=ezplot(g);
set(p,'color',cc(2,:));
legendset = [legendset; sprintf('g(x) = %s', char(g))];

fprintf('Tangente Form: %s\nSimple: %s\n\n', char((subs(ftxf, xf, x0))), char(simple(subs(ftxf, xf, x0))));
fprintf('Reale Loesungen fuer x0:\n')

    for i = 1 : (length(xfk))
        n = xfk(i);
        if(isreal(n))
            fprintf('x%g: %.12g\n', i, n)
            
            ft=subs(ftxf,xf,xfk(i));
            ft = ezplot(ft);
            set(ft, 'color', cc(i+2,:));
            
            legendset = [legendset;sprintf('x%g = %g', i, n)];
        end
    end
    
    legend(legendset);
    hold off;
end

