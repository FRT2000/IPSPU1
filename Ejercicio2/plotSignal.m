%y = sistema(x)
function plotSignal (x,y, titulo_l, titulo_r)
    x_l = x(:,1);
    x_r = x(:,2);
    
    y_r = y(:,1);
    y_l = y(:,2);

    figure;
    subplot(2,2,1);
    plot(x_l)
    title('Entrada (canal izquierdo)');
    xlabel('n');
    ylabel('y[n]');

    subplot(2,2,2);
    plot(x_r)
    title('Entrada (canal derecho)');
    xlabel('n');
    ylabel('y[n]');

    subplot(2,2,3);
    plot(y_l)
    title(titulo_l);
    xlabel('n');
    ylabel('yf[n]');

    subplot(2,2,4);
    plot(y_r)
    title(titulo_r);
    xlabel('n');
    ylabel('yf[n]');
end