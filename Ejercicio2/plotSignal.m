%y = sistema(x)
function plotSignal (x,y)

    %Entrada = figure;

    x_l = x(:,1);
    x_r = x(:,2);

    subplot(2,2,1);
    plot(x_l)
    title('Salida (canal izquierdo)');
    xlabel('n');
    ylabel('y[n]');

    subplot(2,2,2);
    plot(x_r)
    title('Salida (canal derecho)');
    xlabel('n');
    ylabel('y[n]');

    y_r = y(:,1);
    y_l = y(:,2);

    subplot(2,2,3);
    plot(y_l)
    title('Salida Filtrada (canal izquierdo)');
    xlabel('n');
    ylabel('yf[n]');

    subplot(2,2,4);
    plot(y_r)
    title('Salida Filtrada (canal derecho)');
    xlabel('n');
    ylabel('yf[n]');

end
