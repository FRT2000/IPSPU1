% Devuelve la TFTD de su entrada, codificada para el cálculo de la
% respuesta en frecuencia.
function H = frecuencia_impulsional(h)
    ds = 0.001;
    s = [-2:ds:2];
    n = [0:1:100];
    for k = 1:length(s)
        H(k)=sum(h.*exp(-1i*2*pi*s(k)*n));
    end
end