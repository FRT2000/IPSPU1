% Ver información del archivo de audio
% para averiguar la cantidad de canales del mismo
info = audioinfo('audio.wav');
disp(info);

% Obtenemos la entrada
[x, fs] = audioread('audio.wav');

% Obtener la salida del sistema 
% cuando se aplica la señal de audio como entrada
y = sistema(x(:, 1));

y_stereo = [y, y];

% Graficar ambos canales de la señal de audio y de la salida obtenida
plotSignal(x, y_stereo, 'Salida (canal izquierdo)', 'Salida (canal derecho)');

% Escuchar la salida resultante
sound(y_stereo, fs);