function y = filtro_2ramas(x)
    n0 = 8820 %retardo
    L = length(x);
    
    a = 0.5
    
    y(1:n0,1:2) = x(1:n0,1:2);
    y(n0+1:n0*2,1:2) = x(n0+1:n0*2,1:2) + a*x(1:n0,1:2);
    y(n0*2+1:L,1:2) = x(n0*2+1:L,1:2) + a*x(n0+1:L-n0,1:2);
end