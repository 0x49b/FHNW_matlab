%Polarkoordinaten
t=(0:0.01:1)*2*pi;
r=2;
x=r.*cos(t);
y=r.*sin(t);
hold on;
plot(x,y)

r=(2+0.1*cos(t));
x1=r.*cos(t);
y2=r.*sin(t);
plot(x1,y2,'r');