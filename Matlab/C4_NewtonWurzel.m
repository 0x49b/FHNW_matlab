function x = C4_NewtonWurzel( a, p, x, n )
    for i = 1:n
       x = (x*p-x^p+a)/p
    end
end

