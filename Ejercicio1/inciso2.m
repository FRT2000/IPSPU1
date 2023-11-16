% Gráficas de las respuestas impulsionales y en frecuencia de cada uno de
% los sistemas.

numero_alumno = 19648;

% Salida de la función senial en [n,x]
[n,x] = senial(numero_alumno);

% Delta de Kronecker
delta = [1 zeros(1,100)];

% Instanciación de los sistemas
y1 = sistema1(x);
y2 = sistema2(x);
y3 = sistema3(x);
y4 = sistema4(x);

% Respuestas impulsionales
h1 = filter(y1, x, delta);
h2 = filter(y2, x, delta);
h3 = filter(y3, x, delta);
h4 = filter(y4, x, delta);

% Respuestas en frecuencia
H1 = frecuencia_impulsional(h1);
H2 = frecuencia_impulsional(h2);
H3 = frecuencia_impulsional(h3);
H4 = frecuencia_impulsional(h4);

% Respuesta impulsional 1
figure;
subplot(2,2,[1 2]);
stem(n, h1, 'o');
title('Respuesta Impulsional 1');
xlabel('n');
ylabel('h1[n]');

% Respuesta en frecuencia 1
subplot(2,2,3);
ds = 0.001;
s = [-2:ds:2];
plot(s, abs(H1));
title('Respuesta en Frecuencia [Módulo]');
ylabel('|H1(e^{j2\pi s})|');
subplot(2,2,4);
plot(s, unwrap(angle(H1)));
title('Respuesta en Frecuencia [Fase]');
ylabel('\phi(H1(e^{j2\pi s}))');

% Respuesta impulsional 2
figure;
subplot(2,2,[1 2]);
stem(n, h2, 'o');
title('Respuesta Impulsional 2');
xlabel('n');
ylabel('h2[n]');

% Respuesta en frecuencia 2
subplot(2,2,3);
plot(s, abs(H2));
title('Respuesta en Frecuencia [Módulo]');
ylabel('|H2(e^{j2\pi s})|');
subplot(2,2,4);
plot(s, unwrap(angle(H2)));
title('Respuesta en Frecuencia [Fase]');
ylabel('\phi(H2(e^{j2\pi s}))');

% Respuesta impulsional 3
figure;
subplot(2,2,[1 2]);
stem(n, h3, 'o');
title('Respuesta Impulsional 3');
xlabel('n');
ylabel('h3[n]');

% Respuesta en frecuencia 3
subplot(2,2,3);
plot(s, abs(H3));
title('Respuesta en Frecuencia [Módulo]');
ylabel('|H3(e^{j2\pi s})|');
subplot(2,2,4);
plot(s, unwrap(angle(H3)));
title('Respuesta en Frecuencia [Fase]');
ylabel('\phi(H3(e^{j2\pi s}))');

% Respuesta impulsional 4
figure;
subplot(2,2,[1 2]);
stem(n, h4, 'o');
title('Respuesta Impulsional 4');
xlabel('n');
ylabel('h4[n]');

% Respuesta en frecuencia 4
subplot(2,2,3);
plot(s, abs(H4));
title('Respuesta en Frecuencia [Módulo]');
ylabel('|H4(e^{j2\pi s})|');
subplot(2,2,4);
plot(s, unwrap(angle(H4)));
title('Respuesta en Frecuencia [Fase]');
ylabel('\phi(H4(e^{j2\pi s}))');