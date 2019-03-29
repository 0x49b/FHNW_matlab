% deltat delta-t Schrittgrösse
% N Anzahl Schritte
% Widerstandsfunktion Function-pointers
% fx hängt von vx und vz ab
% fz hängt von vx und vz ab
function [curve,velocity,t]=D3_InteDiffGlWurfparabelFun(deltat, N, z0,vx0,vz0,fx,fz)
  curve=zeros(N+1,2); % Zeilen = Schritte, 2-Dimensionen x,z Punkte
  velocity=zeros(N+1,2);
  
  % Anfangsbed
  curve(1,1)=0; % X-Koord 
  curve(1,2)=z0; % Z-Koord 
  velocity(1,1)=vx0; % X-Beschl 
  velocity(1,2)=vz0; % Z-Beschl 
  t=0;
  for k=1:N
    if curve(k,2) > 0 %Abbruchbedingung, falls Boden(z=0) erreicht
      t=t+deltat;
      curve(k+1,1)=curve(k,1)+deltat*velocity(k,1);
      curve(k+1,2)=max(0,curve(k,2)+deltat*velocity(k,2)); % Max macht, dass z immer positiv
      velocity(k+1,1)=velocity(k,1)+deltat*fx(velocity(k,1),velocity(k,2));
      velocity(k+1,2)=velocity(k,2)+deltat*fz(velocity(k,1),velocity(k,2));
    else
      curve(k+1,1)=curve(k,1); % x-Wert bleibt stehen
    end
  end
end