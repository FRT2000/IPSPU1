% Obtenemos la entrada
[x, fs] = audioread('audio.wav');

% Obtener la salida del sistema 
% cuando se aplica la señal de audio como entrada
y = sistema(x(:, 1));

% Obtener resultado al pasar la salida anterior
% por el filtro con 2 ramas de retardo
y2 = filtro_2ramas(y);
y2_stereo = [y2, y2];

plotSignal(x, y2_stereo, 'Salida filtrada con 2 ramas (canal izq.)', 'Salida filtrada con 2 ramas (canal der.)');
sound(y2_stereo, fs);

% Obtener resultado al pasar la salida anterior
% por el filtro con 3 ramas de retardo
y3 = filtro_3ramas(y);
y3_stereo = [y3, y3];

plotSignal(x, y3_stereo, 'Salida filtrada con 3 ramas (canal izq.)', 'Salida filtrada con 3 ramas (canal der.)');
sound(y3_stereo, fs);