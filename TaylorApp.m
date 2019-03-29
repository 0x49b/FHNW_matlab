function TaylorApp(f, fvalue, expansionPoint, order)
    syms x;
    resF = double(subs(f, x, fvalue));
    fprintf('f(x) value: %g\n--------\n', resF)
    
    %plotting
    cc=hsv(order + 1);
    legendset = {};
    hold on;
    
    %plot original function
    fo = ezplot(f);
    set(fo, 'color', cc(order + 1,:));
    legendset = [legendset; 'Original'];

    for i = 1 : order
        ft = taylor(f,'expansionPoint',expansionPoint,'order',i + 1);
        res = double(subs(ft, x, fvalue));
        delta = res - resF;
        fprintf('Order %g:\nFormula: %s\nValue: %g\nDelta: %g\n--------\n',i, char(ft), res, delta)
        
        %plotting
        ft = ezplot(ft);
        set(ft, 'color', cc(i,:));
        legendset = [legendset;sprintf('Order %g', i)];
    end
    legend(legendset);
    hold off;
end