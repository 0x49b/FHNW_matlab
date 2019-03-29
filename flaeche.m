%%
% Flaeche berechnen
% --------------------------------------
%
% Parameterreihenfolge:
%
% f = Funktion 1
% g = Funktion 2
% 
% Optional:
%
% x1 = Intervallgrenze 1
% x2 = Intervallgrenze 2
%
%%
function z = flaeche(varargin)
warning off;
syms f g x1 x2 x a;

f = varargin{1};
g = varargin{2};

if nargin > 2  
    x1= varargin{3};
    x2= varargin{4};
end

h=f-g;

if nargin == 2
    
    ns=solve(h);
    disp('Nullstellen:');
    disp(double(ns(1)));
    disp(double(ns(2)));
    disp('Flaeche:');
    disp(abs(double(int(h,x,ns(1),ns(2)))));
    disp(int(h,x,ns(1),ns(2)));
    
else
    
    if size(solve(h)) == 0
        
        disp('Intervall:');
        disp(x1);
        disp(x2);
        disp('Flaeche:');
        disp(abs(double(int(h,x,x1,x2))));
        disp(int(h,x,x1,x2));
        
    else
        
        g2 = matlabFunction(f-g);
        ns1=fzero(g2,x1);
        ns2=fzero(g2,x2);
        disp('Intervall:');
        disp(double(ns1));
        disp(double(ns2));
        disp('Flaeche:');
        disp(abs(double(int(h,x,ns1,ns2))));
        disp(int(h,x,ns1,ns2));
        
    end
    
end


end

