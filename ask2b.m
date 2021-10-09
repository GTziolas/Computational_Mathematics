function EulersMethod
%Euler 

a = 0; %to simeio ekkinisis
b = 3; %to simeio termatismou
y(1)=0; %arxiki sinthiki
x(1)=0; %to Xo
h = 0.1; %vima 0.1
N = (b-a)/h; % N=(b-a)/h


for i=1:N
    y(i+1) = y(i) + h*x(i)+h*y(i);
    x(i+1) = x(i) + h;
end

%Akrivis lisi (metavlites 2)

x2 = [0:0.001:3]; %prosomoiosi sinexous
y2 = exp(x2)-x2-1;

%Modified Euler (metavlites 3)
a3 = 0; %to simeio ekkinisis
b3 = 3; %to simeio termatismou
y3(1)=0; %arxiki sinthiki
x3(1)=0; %to Xo
h3 = 0.1; %vima 0.1
N3 =(b3-a3)/h3;

for k=1:N3
    y3(k+1)= y3(k)+ h3*((h3/2)*(y3(k)+x3(k)+1)+(y3(k)+x3(k)));
    x3(k+1) = x3(k)+h3;
end

plot(x,y,'r',x2,y2,'b',x3,y3,'g'); 
legend('Euler','y','Modified Euler','Location','Best');
title('y = e^x -x -1');
%kokkini i euler, ble i akrivis, green i modified euler, black i improved

end





