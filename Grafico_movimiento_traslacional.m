%--Funcion ode45 que resuelve numericamente el sistema MSPD--%
[t,x]=ode45(@MST,[0 10], [0 0 0 0]); %[x1 x2 x'1 x'2]
%----Graficamos las figuras----%
% x y t son parametros que retorna la función
%Figura 1
figure(1)
plot(t,x(:,1),'b');
grid on
title("Posición de masa 1");
xlabel("Tiempo");
ylabel("Posición");
%Figura 2
figure(2)
plot(t,x(:,2),'r');
grid on
title("Posición de masa 2");
xlabel("Tiempo");
ylabel("Posición");
%Figura 3 (Ambas graficas)
figure(3)
plot(t,x(:,1),'b');
grid on
hold on
title("Posición de m1 y m2");
xlabel("Tiempo");
ylabel("Posición");
plot(t,x(:,2),'r');
grid on