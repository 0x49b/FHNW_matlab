%Falls DetaX in der Aufgabenstellung bereits angegeben wird.
%deltax statt Schritte --> vergleiche diffGleiIter.m

function diffGleiIterDelta(x0,y0,xval,f,deltax)
  x = x0;
  N = round((xval-x0)/deltax);
  for i=1:N
      y0 = y0 + subs(f, x) * deltax;
      x = x + deltax;
      %disp(y0);
  end
fprintf(' für x=')
disp(xval)
fprintf('Funktion: ')
disp(f)
fprintf('Delta x:')
disp(deltax)
fprintf('y=')
disp(double(y0));
end
