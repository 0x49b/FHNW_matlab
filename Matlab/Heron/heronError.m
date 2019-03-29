function err = heronError(a,x,n)
valA = heron(a,x,n);
err = abs(valA-sqrt(x));

end