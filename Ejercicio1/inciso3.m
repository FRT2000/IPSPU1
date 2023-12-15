% Gráficas de las respuestas impulsionales y en frecuencia de cada uno de
% los sistemas.
n = 0:100;
ds = 0.001;
s = -0.5:ds:0.5;

% Delta de Kronecker
d = delta(n);

% Respuestas impulsionales
% obtenidas ingresando una delta al sistema
h1 = sistema1(d);
h2 = sistema2(d);
h3 = sistema3(d);
h4 = sistema4(d);

% Respuestas en frecuencia
% obtenidas ingresando una delta al sistema
H1 = tftd(h1);
H2 = tftd(h2);
H3 = tftd(h3);
H4 = tftd(h4);

% Respuestas impulsionales
% obtenidas de manera analítica
h1a = resp_imp1(n);
h2a = resp_imp2(n);
h3a = resp_imp3(n);
h4a = resp_imp4(n);

% Respuestas en frecuencia
% obtenidas de manera analítica
H1a = resp_frec1(s);
H2a = resp_frec2(s);
H3a = resp_frec3(s);
H4a = resp_frec4(s);

% Comparación de la respuestas impulsionales 
% obtenidas para el sistema 1
figure;
subplot(3,2,1);
stem(n, h1a, 'o');
title('Respuesta Impulsional analítica 1');
xlabel('n');
ylabel('h1[n]');
yticks(-1:0.1:1);

subplot(3,2,2);
stem(n, h1, 'o');
title('Respuesta Impulsional 1 ingresando una delta al sistema');
xlabel('n');
ylabel('h1[n]');
yticks(-1:0.1:1);

% Comparación de la respuestas en frecuencia
% obtenidas para el sistema 1
subplot(3,2,3);
plot(s, abs(H1a));
title('Respuesta en Frecuencia 1 analítica [Módulo]');
ylabel('|H1(e^{j2\pi s})|');
subplot(3,2,5);
plot(s, unwrap(angle(H1a)));
title('Respuesta en Frecuencia 1 analítica [Fase]');
ylabel('\phi(H1(e^{j2\pi s}))');

subplot(3,2,4);
plot(s, abs(H1));
title('Respuesta en Frecuencia 1 ingresando una delta [Módulo]');
ylabel('|H1(e^{j2\pi s})|');
subplot(3,2,6);
plot(s, unwrap(angle(H1)));
title('Respuesta en Frecuencia 1 ingresando una delta [Fase]');
ylabel('\phi(H1(e^{j2\pi s}))');

% Comparación de la respuestas impulsionales
% obtenidas para el sistema 2
figure;
subplot(3,2,1);
stem(n, h2a, 'o');
title('Respuesta Impulsional analítica 2');
xlabel('n');
ylabel('h2[n]');
yticks(-1:0.1:1);

subplot(3,2,2);
stem(n, h2, 'o');
title('Respuesta Impulsional 2 ingresando una delta al sistema');
xlabel('n');
ylabel('h2[n]');
yticks(-1:0.1:1);

% Comparación de la respuestas en frecuencia
% obtenidas para el sistema 2
subplot(3,2,3);
plot(s, abs(H2a));
title('Respuesta en Frecuencia 2 analítica [Módulo]');
ylabel('|H2(e^{j2\pi s})|');
subplot(3,2,5);
plot(s, unwrap(angle(H2a)));
title('Respuesta en Frecuencia 2 analítica [Fase]');
ylabel('\phi(H2(e^{j2\pi s}))');

subplot(3,2,4);
plot(s, abs(H2));
title('Respuesta en Frecuencia 2 ingresando una delta al sistema [Módulo]');
ylabel('|H2(e^{j2\pi s})|');
subplot(3,2,6);
plot(s, unwrap(angle(H2)));
title('Respuesta en Frecuencia 2 ingresando una delta al sistema [Fase]');
ylabel('\phi(H2(e^{j2\pi s}))');

% Comparación de la respuestas impulsionales
% obtenidas para el sistema 3
figure;
subplot(3,2,1);
stem(n, h3a, 'o');
title('Respuesta Impulsional analítica 3');
xlabel('n');
ylabel('h3[n]');
yticks(-1:0.1:1);

subplot(3,2,2);
stem(n, h3, 'o');
title('Respuesta Impulsional 3 ingresando una delta al sistema');
xlabel('n');
ylabel('h3[n]');
yticks(-1:0.1:1);

% Comparación de la respuestas en frecuencia
% obtenidas para el sistema 3
subplot(3,2,3);
plot(s, abs(H3a));
title('Respuesta en Frecuencia 3 analítica [Módulo]');
ylabel('|H3(e^{j2\pi s})|');
subplot(3,2,5);
plot(s, unwrap(angle(H3a)));
title('Respuesta en Frecuencia 3 analítica [Fase]');
ylabel('\phi(H3(e^{j2\pi s}))');

subplot(3,2,4);
plot(s, abs(H3));
title('Respuesta en Frecuencia 3 ingresando una delta al sistema [Módulo]');
ylabel('|H3(e^{j2\pi s})|');
subplot(3,2,6);
plot(s, unwrap(angle(H3)));
title('Respuesta en Frecuencia 3 ingresando una delta al sistema [Fase]');
ylabel('\phi(H3(e^{j2\pi s}))');
ylim([-2, 2]);

% Comparación de la respuestas impulsionales
% obtenidas para el sistema 3
figure;
subplot(3,2,1);
stem(n, h4a, 'o');
title('Respuesta Impulsional analítica 4');
xlabel('n');
ylabel('h4[n]');
yticks(-1:0.1:1);

subplot(3,2,2);
stem(n, h4, 'o');
title('Respuesta Impulsional 4 ingresando una delta al sistema');
xlabel('n');
ylabel('h4[n]');
yticks(-1:0.1:1);

% Comparación de la respuestas en frecuencia
% obtenidas para el sistema 4
subplot(3,2,3);
plot(s, abs(H4a));
title('Respuesta en Frecuencia 4 analítica [Módulo]');
ylabel('|H4(e^{j2\pi s})|');
subplot(3,2,5);
plot(s, angle(H4a));
title('Respuesta en Frecuencia 4 analítica [Fase]');
ylabel('\phi(H4(e^{j2\pi s}))');

subplot(3,2,4);
plot(s, abs(H4));
title('Respuesta en Frecuencia 4 ingresando una delta al sistema [Módulo]');
ylabel('|H4(e^{j2\pi s})|');
subplot(3,2,6);
plot(s, angle(H4));
title('Respuesta en Frecuencia 4 ingresando una delta al sistema [Fase]');
ylabel('\phi(H4(e^{j2\pi s}))');