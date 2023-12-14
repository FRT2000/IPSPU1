% Devuelve la TFTD de su entrada.
function Y = tftd(x)
    ds = 0.001;
    s = -0.5:ds:0.5;
    n = 0:100;
    Y = zeros(size(x));
    for k = 1:length(s)
        Y(k) = sum(x .* exp(-1i * 2 * pi * s(k) * n));
    end
end