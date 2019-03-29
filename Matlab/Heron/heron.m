function a = heron(a,x,n)
    for i = 1:n
       a = 0.5*(a+x/a);
    end
end