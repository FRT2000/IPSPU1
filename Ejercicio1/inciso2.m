n = 0:100;
ds = 0.001;
s = -0.5:ds:0.5;

% Obtención de respuestas impulsionales
h1 = resp_imp1(n);
h2 = resp_imp2(n);
h3 = resp_imp3(n);
h4 = resp_imp4(n);

% Obtención de respuestas en frecuencia
H1 = resp_frec1(s);
H2 = resp_frec2(s);
H3 = resp_frec3(s);
H4 = resp_frec4(s);

% Respuesta impulsional 1
figure;
subplot(2,2,[1 2]);
stem(n, h1, 'o');
title('Respuesta Impulsional 1');
xlabel('n');
ylabel('h1[n]');

% Respuesta en frecuencia 1
subplot(2,2,3);
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