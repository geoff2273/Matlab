%Helix.m
%Plotting Eq. (1.3-27)
clear
nxo = input('n(xo) = ' );
n2 = input('n2 = ' ) ;
alpha = input('alpha [radian] = ' ) ;
zin = input('start point of z in micrometers = ' );
zfi = input('end point of z in micrometers = ');
Beta = nxo*cos(alpha);
z=zin:(zfi-zin)/1000:zfi;
xo=Beta*tan(alpha)/(n2^0.5);
x=xo*cos((n2^0.5)*z/Beta);
y=xo*sin((n2^0.5)*z/Beta);
plot3(z,y,x)
title('Helix ray propagation')
xlabel('z in micrometers')
ylabel('y in micrometers')
zlabel('x in micrometers')
grid on
sprintf('%f [micrometers]', xo)
view(-37.5+68, 30)