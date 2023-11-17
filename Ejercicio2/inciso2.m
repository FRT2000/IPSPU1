[n, x] = hcanald(26756);  % Hacemos esto solamente para obtener la cantidad de valores en hdcanal

% Crea una delta de Kronecker)
delta = zeros(size(n));
delta(1) = 1;  % Delta en n=0

% Obtiene la respuesta impulsional
h = sistema(delta);

% Plot de la delta y la respuesta impulsional
stem(n, h, 'DisplayName', 'Respuesta impulsional h[n]');
xlabel('n');
ylabel('h[n]');
title('Verificación de de la respuesta impulsional');
legend('show');
grid on;

ylim([-1, 1.5]);

% Implementa el sistema: y[n]= x[n] - 0.5*x[n-8820] + 0.25*x[n-17640] 
function y = sistema(x)
    y = x - 0.5 * [zeros(1, 8820), x(1:end-8820)] + 0.25 * [zeros(1, 17640), x(1:end-17640)];
end