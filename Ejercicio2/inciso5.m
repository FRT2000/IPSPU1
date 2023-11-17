[x, fs] = audioread('audio.wav');

%filtro con 2 ramas
y2 = filtro_2ramas(y);
plotSignal(x,y2,'Salida filtrada con 2 ramas (canal izq.)', 'Salida filtrada con 2 ramas (canal der.)');
sound(y2,fs);

%filtro con 3 ramas
y3 = filtro_3ramas(y);
plotSignal(x,y3,'Salida filtrada con 3 ramas (canal izq.)', 'Salida filtrada con 3 ramas (canal der.)');
sound(y3,fs);