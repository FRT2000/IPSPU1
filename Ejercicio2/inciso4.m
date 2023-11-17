%filtro con 2 ramas
y2 = filtro_2ramas(y)
plotSignal(x,y2)
sound(y2,fs)

%filtro con 3 ramas
y3 = filtro_3ramas(y)
plotSignal(x,y3)
sound(y3,fs)