delta = [1 1;zeros(348380,2)];

h = sistema(delta);

h(1);
h(8821);
h(17641);

n = (0:1:348380);
figure;
stem(n, h);
title('Verificación de la Respuesta impulsional');
xlabel('n');
ylabel('h[n]');
