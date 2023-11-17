%obtengo la entrada
[x, fs] = audioread('audio.wav');

%obtengo la salida
y = sistema(x)
plotSignal(x,y)
sound(y,fs)