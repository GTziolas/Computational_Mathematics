function EulersMethod
%Euler 

a = 0; %to simeio ekkinisis
b = 10; %to simeio termatismou
y(1)=1; %arxiki sinthiki
x(1)=0; %to Xo
h = 0.2; %vima 0.2
N = (b-a)/h; % N=(b-a)/h => N=50

for i=1:N
    y(i+1) = y(i) + h.*(x(i)./y(i));
    x(i+1) = x(i) + h;
end

%Akrivis lisi (metavlites 2)
a2 = 0; %to simeio ekkinisis
b2 = 10; %to simeio termatismou
y2(1)=1; %arxiki sinthiki
x2(1)=0; %to Xo
h2 = 0.2; %vima 0.2
N2 =(b2-a2)/h2;

x2 = [0:h2:10]; %prosomoiosi sinexous
y2 = sqrt(x2.^2+1);

%Modified Euler (metavlites 3)
a3 = 0; %to simeio ekkinisis
b3 = 10; %to simeio termatismou
y3(1)=1; %arxiki sinthiki
x3(1)=0; %to Xo
h3 = 0.2; %vima 0.2
N3 =(b3-a3)/h3;

for k=1:N3
    y3(k+1)= y3(k)+ ((4*y3(k)*x3(k)*h3)+2*(h3^2)*y3(k))/(4*(y3(k)^2)+2*h3*x3(k));
    x3(k+1) = x3(k)+h3;
end

%Improved Euler (metavlites 4)
a4 = 0; %to simeio ekkinisis
b4 = 10; %to simeio termatismou
y4(1)=1; %arxiki sinthiki
x4(1)=0; %to Xo
h4 = 0.2; %vima 0.2
N4 =(b4-a4)/h4;

for j=1:N4
    y4(j+1)= y4(j)+ (h4/2)*(x4(j)/y4(j)+((x4(j)+h4)/y4(j)+h4*(x4(j)/y4(j))));
    x4(j+1) = x4(j)+h4;
end

figure;
plot(x,y,'r',x2,y2,'b',x3,y3,'g',x4,y4,'k'); 
legend('Euler','y','Modified Euler','Improved Euler','Location','Best');
title('y = sqrt(x^2 + 1)');
hold on;
%kokkini i euler, ble i akrivis, green i modified euler, black i improved

figure;
plot(x2,y(i)-y2','*');
hold on;
plot(x2,y3(k)-y2','o');
hold on;
plot(x2,y4(j)-y2','+');
legend('Euler','Modified Euler','Improved Euler','Location','Best');
title('Errors');
%eixa kapoio error me matrix dimensions isws einai lathos ta error

end





