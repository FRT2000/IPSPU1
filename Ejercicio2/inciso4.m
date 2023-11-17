n0 = 8820;
figure;

n = [0:1:n0*5];
h_total_2ramas = (n == 0) + 0.125 * (n == n0*3);
subplot(2,2,1);
stem(n,h_total_2ramas,'o');
title('Respuesta impulsional total con 2 ramas');
xlabel('n');
ylabel('h total[n]');

n = [0:1:n0*3];
h_filtro_2ramas = (n == 0) + 0.5 * (n == n0);
subplot(2,2,2);
stem(n,h_filtro_2ramas,'o');
title('Filtro con 2 Ramas');
xlabel('n');
ylabel('h filtro[n]');

n = [0:1:n0*6];
h_total_3ramas = (n == 0) + 0.0625 * (n == n0*4) - 0.03125 * (n == n0*5);
subplot(2,2,3);
stem(n,h_total_3ramas,'o');
title('Respuesta impulsional total con 3 ramas');
xlabel('n');
ylabel('h total[n]');

n = [0:1:n0*4];
h_filtro_3ramas = (n == 0) + 0.5 * (n == n0) - 0.125 * (n == n0*3);
subplot(2,2,4);
stem(n,h_filtro_3ramas,'o');
title('Filtro con 3 ramas');
xlabel('n');
ylabel('h filtro[n]');