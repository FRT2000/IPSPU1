% Gráfica de la función senial junto al módulo y fase de su TFTD.

numero_alumno = 19648;

[n, x] = senial(numero_alumno);

ds = 0.001;
s = -2:ds:2;

TFTD_S = TFTD_senial(x, n, s);

% Módulo TFTD
m = abs(TFTD_S);

% Fase TFTD
p = unwrap(angle(TFTD_S));

% Plot de Senial
subplot(2, 2, [1, 2]);
stem(n, x, 'o');
title('Señal');
xlabel('n');
ylabel('x[n]');

% Plot del módulo de la TFTD
subplot(2, 2, 3);
plot(s, m);
title('Módulo de la TFTD');
xlabel('s');
ylabel('|X(e^{j2\pi s})|');
xlim([-2, 2]); % Ajusta los límites del eje x

% Plot de la fase de la TFTD
subplot(2, 2, 4);
plot(s, p);
title('Fase de la TFTD');
xlabel('s');
ylabel('\angle X(e^{j2\pi s})');
xlim([-2, 2]); % Ajusta los límites del eje x

% TFTD de senial
function TFTD_S = TFTD_senial(x, n, s)
    TFTD_S = zeros(size(s));
    for k = 1:length(s)
        TFTD_S(k) = sum(x .* exp(-1i * 2 * pi * s(k) * n));
    end
end