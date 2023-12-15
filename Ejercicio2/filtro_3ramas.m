function retval = filtro_3ramas(input)
    n1 = 8820; %retardo 1
    a = -0.5;
    retval = zeros(size(input));
    for n = 1:length(input)
        retval(n) = input(n);
        if n >= n1 + 1
            retval(n) = retval(n) - a * input(n - n1);
        end
        if n >= 3 * n1 + 1
            retval(n) = retval(n) + a^3 * input(n - 3 * n1);
        end
        if n >= 4 * n1 + 1
            retval(n) = retval(n) - a^4 * input(n - 4 * n1);
        end
    end
end