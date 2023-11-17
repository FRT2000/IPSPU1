%Obtenemos la entrada
[x, fs] = audioread('audio.wav');

%obtengo la salida
y = sistema(x);
plotSignal(x,y,'Salida (canal izquierdo)', 'Salida (canal derecho)');
sound(y,fs);