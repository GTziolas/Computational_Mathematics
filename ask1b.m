function EulersMethod
%Euler

a = 0; %to simeio ekkinisis
b = 3; %to simeio termatismou
y(1)=2; %arxiki sinthiki
x(1)=0; %to Xo
h = 0.2; %vima 0.2
N = (b-a)/h; % N=(b-a)/h => N=15

F= @(x,y) (y+(x^2)-2)/(x+1);

for i=1:N
    y(i+1) = y(i) + h*F(x(i),y(i));
    x(i+1) = x(i) + h;
end

%Akrivis lisi (metavlites 2)
a2 = 0; %to simeio ekkinisis
b2 = 3; %to simeio termatismou
y2(1)=2; %arxiki sinthiki
x2(1)=0; %to Xo
h2 = 0.2; %vima 0.2
N2 = (b2-a2)/h2;

x2 = [0:0.01:3];
y2 = ((x2.^2)+2.*x2+2-2.*(x2+1).*log(x2+1));

%Taylor (metavlites 3)
a3 = 0; %to simeio ekkinisis
b3 = 3; %to simeio termatismou
y3(1)=2; %arxiki sinthiki
x3(1)=0; %to Xo
h3 = 0.2; %vima 0.2
N3 = (b3-a3)/h3;

for k=1:N3
    y3(k+1) = y3(k) + h3*(y3(k)+x3(k)*x3(k)-2)/(x3(k)+1)/(x3(k)+1) +(h3^2)*x3(k)/(x3(k)+1);
    x3(k+1) = x3(k) + h3;
end


plot(x,y,'o');
hold on;
plot(x2,y2,'b');
hold on;
plot(x3,y3,'*');
legend('Euler','y','Taylor','Location','Best');
title('y = x^2 + 2x + 2 - 2(x+1)*ln(x+1)');
%kokkini i euler, ble i akrivis, green i taylor

end





