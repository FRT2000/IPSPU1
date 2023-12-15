% Respuesta impulsional 
% obtenida utilizando la funcion hcanald
[n, h1] = hcanald(26756); % Legajo 02675/6

% Delta de Kronecker
d = delta(n);
% delta = [1 1;zeros(348380,2)];

% Respuesta impulsional 
% obtenida con el sistema implementado
h2 = sistema(d);

% Gráfico de la respuesta impulsional 
% obtenida usando hcanald
figure;
subplot(1,2,1);
stem(n, h1);
title('Respuesta impulsional h_a[n] usando hcanald');
xlabel('n');
ylabel('h_a[n]');
yticks(-0.5:0.1:1);

% Gráfico de la respuesta impulsional 
% obtenida usando la implementación
subplot(1,2,2);
stem(n, h2);
title('Respuesta Impulsional h_a[n] usando la implementación');
xlabel('n');
ylabel('h_a[n]');
yticks(-0.5:0.1:1);

sgtitle('Verificación del sistema implementado');