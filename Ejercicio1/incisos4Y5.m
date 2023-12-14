% Gráficas de las salidas y sus TFTDs de los sistemas con la entrada x[n].

numero_alumno = 19648;

% Salida de la funcion senial en [n,x]
[n,x] = senial(numero_alumno);
ds = 0.001;
s = -0.5:ds:0.5;

% Instanciacion de los sistemas
y1 = sistema1(x);
y2 = sistema2(x);
y3 = sistema3(x);
y4 = sistema4(x);

% Obtención de las TFTD's
Y1 = tftd(y1);
Y2 = tftd(y2);
Y3 = tftd(y3);
Y4 = tftd(y4);

% Plot de las salidas de los sistemas
figure;
subplot(2,2,1);
stem(n,y1,'o');
title('Sistema 1');
xlabel('n');
ylabel('y1[n]');

subplot(2,2,2);
stem(n,y2,'o');
title('Sistema 2');
xlabel('n');
ylabel('y2[n]');

subplot(2,2,3);
stem(n,y3,'o');
title('Sistema 3');
xlabel('n');
ylabel('y3[n]');

subplot(2,2,4);
stem(n,y4,'o');
title('Sistema 4');
xlabel('n');
ylabel('y4[n]');

% Plot TFTD del sistema 1
figure;
subplot(2,1,1);

plot(s,abs(Y1));
title('Sistema 1 [Módulo]');
ylabel('|Y1(e^j^2^π^s)|');
subplot(2,1,2);
plot(s,unwrap(angle(Y1)));
title('Sistema 1 [Fase]');
ylabel('Φ(Y1(e^j^2^π^s)');

% Plot TFTD del sistema 2
figure;
subplot(2,1,1);

plot(s,abs(Y2));
title('Sistema 2 [Módulo]');
ylabel('|Y2(e^j^2^π^s)|');
subplot(2,1,2);
plot(s,unwrap(angle(Y2)));
title('Sistema 2 [Fase]');
ylabel('Φ(Y2(e^j^2^π^s)');

% Plot TFTD del sistema 3
figure;
subplot(2,1,1);

plot(s,abs(Y3));
title('Sistema 3 [Módulo]');
ylabel('|Y3(e^j^2^π^s)|');
subplot(2,1,2);
plot(s,unwrap(angle(Y3)));
title('Sistema 3 [Fase]');
ylabel('Φ(Y3(e^j^2^π^s)');

% Plot TFTD del sistema 4
figure;
subplot(2,1,1);

plot(s,abs(Y4));
title('Sistema 4 [Módulo]');
ylabel('|Y4(e^j^2^π^s)|');
subplot(2,1,2);
plot(s,unwrap(angle(Y4)));
title('Sistema 4 [Fase]');
ylabel('Φ(Y4(e^j^2^π^s)');