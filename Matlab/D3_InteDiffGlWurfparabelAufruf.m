g = 9.81;
fx=@(x,y)(0); % Kein Luftwiderstand Beschleunigungsfunktion
fz=@(x,y)(-g); % Vertikale Anziehungskraft Beschleunigungsfunktion
z0=10; % Starthöhe m
vx0=10; % m/s
vz0=5; % m/s

deltat=0.001
N=10000;
[curve,velocity,t] = D3_InteDiffGlWurfparabelFun(deltat,N,z0,vx0,vz0,fx,fz)
plot(curve(:,1),curve(:,2))

% Beweis maximale Zeit
tmax = vz0/g+sqrt(vz0^2+2*g*10)/g