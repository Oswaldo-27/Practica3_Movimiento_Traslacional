function dx=MST(t,x)
%----Definición de nuestros parametros----%
m1=290; % Masa 1
b1=1000; % Amortiguador 
m2=59; % Masa 2
k1=16182; % Coeficiente del resorte 1
f=0; % Fuerza
k2=19000; % Coeficiente del resorte 2
z1=0.05*sin(0.5*pi*t);
z2= 0.05*sin(20*pi*t);
z=z1;
%----Creamos nuestra matriz de variables de estado----%
dx=zeros(4,1);
%----Definición dinamica del sistemas (Representación de estados)----%
dx(1)=x(3);
dx(2)=x(4);
dx(3)=(1/m1)*(-(b1*x(3))+(b1*x(4))-(k1*x(1))+(k1*x(2))+f);
dx(4)=(1/m2)*((b1*x(3))-(b1*x(4))+(k1*x(1))-((k1+k2)*x(2))+(k2*z)+f);
%---------------------------------------------------------------------%