function l = heronGetLoops(a,x)
l = 0;
while heronError(a,x,l) > 1e-15 %eps = Maschinengenauigkeit
    l = l + 1;
end
% S=sprintf('Die Folge konvergiert zu %0.1f in %d Schritten.',x,n);
% disp(S)