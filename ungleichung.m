clear;clc;
echo off;
warning off;

syms x y; 

% ÄNDERN: Richtige Fallunterscheidung auskommentieren:

% Fallunterscheidung mit a* statt abs():
% 1 mal abs() -> 2 Fälle
% a = [ 1,-1];

% Fallunterscheidung mit a*/b* statt abs():
% 2 mal abs() -> 4 Fälle
a = [ 1,-1, 1,-1];
b = [ 1, 1,-1,-1];

% 3 mal abs() -> 8 Fälle
% a = [ 1,-1, 1,-1, 1,-1, 1,-1];
% b = [ 1, 1,-1,-1, 1, 1,-1,-1];
% c = [ 1, 1, 1, 1,-1,-1,-1,-1];

% 4 mal abs() -> 16 Fälle
% a = [ 1,-1, 1,-1, 1,-1, 1,-1, 1,-1, 1,-1, 1,-1, 1,-1];
% b = [ 1, 1,-1,-1, 1, 1,-1,-1, 1, 1,-1,-1, 1, 1,-1,-1];
% c = [ 1, 1, 1, 1,-1,-1,-1,-1, 1, 1, 1, 1,-1,-1,-1,-1];
% d = [ 1, 1, 1, 1, 1, 1, 1, 1,-1,-1,-1,-1,-1,-1,-1,-1];

% Die eigentliche Ungleichung (wie in Aufgabenstellung):
% BSP1: u = inline('abs(2*y+x-1)-abs(x+1) <= x+y');
% BSP2: u = inline('abs(x+y-2)>2*y-3*x');
% !!ÄNDERN:
u = inline('abs(x) >= y + 1');
u = inline('abs(2*y+x-1)-abs(x+1) <= x+y');

% Als Gleichung (abs() mit a*,b*... ersetzt, nach 0 aufgelöst):
% BSP1: f = a*(2*y+x-1) - b*(x+1) -(x+y);
% BSP2: f = a*(x+y-2)- (2*y-3*x);
% !!ÄNDERN:
f = a*(x) - (y + 1);
 f = a*(2*y+x-1) - b*(x+1) -(x+y);

% Farben und Linen:
colors = 'grbkmcgrbkmcgrbkmc';
styles = {'--' ':' '-.' '--' ':' '-.' '--' ':' '-.'};

% Graphik erstellen:
fig = figure; hold on; grid on;

% Schlaufe durch alle Fälle:
for i=[1:size(a,2)]; 
  % Auflösen der Gleichung:
  fx(i) = solve(f(i),'x'); 
  fy(i) = solve(f(i),'y');
end;

% Punkte als Lösungsfläche:
%space = unique([[-50:16:50] [-20:8:20] [-15:4:15] [-10:2:10] [-5:1:5] [-3:.6:3] [-2:.2:2] [-.5:.1:.5]]);
n = 20;
space = horzcat(-1*logspace(1.7,0,n)+1,logspace(0,1.7,n)-1);

%Weniger Punkte, normale Verteilung:
%space = unique([[-50:10:50] [-3:2:3] [-2:.5:2] [-.5:.2:.5]]);

%for i= [-50:10:50]; 
%  for j= [-50:10:50];
for i= space 
   n = max(8,min(100,20-abs(i)));
   for j=  horzcat(-1*logspace(1.7,0,n)+1,logspace(0,1.7,n)-1)
    if (u(i,j)) 
      ms = max(5,(abs(i)+abs(j))*1.5);
      plot(i,j,'r.','MarkerSize',ms); %,'DisplayName',sprintf('%i,%i',i,j));
    end;%if
  end;%for
end;%for

% Eine Linie pro Fall zeichen:
% Schlaufe durch alle Fälle:
for i=[1:size(a,2)]; 
  % Linie zeichnen:
  h(i) = ezplot(fy(i),[-50:50]);
  % Formatierung: 
  set(h(i),'color',colors(i));
  set(h(i),'LineStyle',styles{i}); 
  set(h(i),'LineWidth',2);
  set(h(i),'DisplayName',char(fy(i)));
end;

% Schnittpunkte der Geraden
for i=[1:size(fy,2)]
  for j=[1:size(fy,2)]
    if (j<=i) continue; end;
    schnitt = fy(i)-fy(j);
    sx = solve(schnitt, 'x');
    if isempty(sx)==0
      sy = solve(subs(f(i),x,sx),'y');
      if isempty(sy)==0
        str = sprintf(' Schnittpunkt: %i,%i',double(sx),double(sy));
        plot(sx,sy,'bx','LineWidth',10,'DisplayName',str);
        text(double(sx),double(sy),str,'FontSize',14);
      end;%if sy
    end;%if sx
  end;%for j
end;%for i

% Achsen-Zoom angleichen:
axis equal;
% Legende:
legend(h);

% Lösungsformeln ausgeben:
fx
fy
