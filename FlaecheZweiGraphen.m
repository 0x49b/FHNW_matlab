function FlaecheZweiGraphen(f, g)
    h = f - g;
    nullstellen = solve(h);
    nullstellen = sort(double(nullstellen));
    A = 0;
    
    fprintf('Nullstellen:\n')
    
    %print ns
    for i = 1 : (length(nullstellen))
        ns = double(nullstellen(i));
        fprintf('N%g: %g\n',i, ns)
    end
    
    fprintf('\nFlaechen:\n')
    
    %calc and print areas
    for i = 1 : (length(nullstellen) - 1)
        Ad = abs(int(h, nullstellen(i), nullstellen(i + 1)));
        A = A + Ad;
        
        Ad = double(Ad);
        fprintf('A%g: %g\n',i,Ad)
    end
    
    A = double(A);
    fprintf('---------------\n')
    fprintf('A: %g\n',A)
    
    %print plot
    hold on;
    f = ezplot(f);
    g = ezplot(g);
    hold off;
    set(g, 'color', 'red', 'DisplayName', 'f');
    legend('f1(x)','g2(x)');
end