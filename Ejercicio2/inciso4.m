n1 = 8820;
a = -0.5;

% Graficar respuesta impulsional de la cascada con filtro de 1 rama de retardo
n = 0:1:n1*3;
h_total2 = (n == 0) - a^3 * (n == n1*3);

figure;
subplot(3,2,1);
stem(n, h_total2, 'o');
title('Respuesta impulsional de la cascada con 1 rama de retardo');
xlabel('n');
ylabel('h_{total1}[n]');
ylim([0, 1.1]);

% Graficar filtro de 1 rama de retardo
h_filtro1 = (n == 0) - a * (n == n1);

subplot(3,2,2);
stem(n, h_filtro1, 'o');
title('Filtro con 1 Rama de retardo');
xlabel('n');
ylabel('h_{filtro1}[n]');
ylim([0, 1.1]);

% Graficar respuesta impulsional de la cascada con filtro de 2 ramas de retardo
n = 0:1:n1*5;
h_total2 = (n == 0) + a^4 * (n == n1*4) + a^5 * (n == n1*5);

subplot(3,2,3);
stem(n, h_total2, 'o');
title('Respuesta impulsional de la cascada con 2 ramas de retardo');
xlabel('n');
ylabel('h_{total2}[n]');
ylim([-0.2, 1.1]);

% Graficar filtro de 2 ramas de retardo
h_filtro2 = (n == 0) - a * (n == n1) + a^3 * (n == n1*3);
subplot(3,2,4);
stem(n, h_filtro2, 'o');
title('Filtro con 2 ramas de retardo');
xlabel('n');
ylabel('h_{filtro2}[n]');
ylim([-0.2, 1.1]);

% Graficar respuesta impulsional de la cascada con filtro de 3 ramas de retardo
n = 0:1:n1*6;
h_total3 = (n == 0) - a^6 * (n == n1*6);

subplot(3,2,5);
stem(n, h_total3, 'o');
title('Respuesta impulsional de la cascada con 3 ramas de retardo');
xlabel('n');
ylabel('h_{total3}[n]');
ylim([-0.2, 1.1]);

% Graficar filtro de 3 ramas de retardo
h_filtro3 = (n == 0) - a * (n == n1) + a^3 * (n == n1*3) - a^4 * (n == n1*4);
subplot(3,2,6);
stem(n, h_filtro3, 'o');
title('Filtro con 3 ramas de retardo');
xlabel('n');
ylabel('h_{filtro3}[n]');
ylim([-0.2, 1.1]);