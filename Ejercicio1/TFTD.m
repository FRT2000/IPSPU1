% Devuelve la TFTD de su entrada.
function Y = tftd(x)
    ds = 0.001;
    s = [-2:ds:2];
    n = [0:1:100];
    for k = 1:length(s)
        Y(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
    end
end