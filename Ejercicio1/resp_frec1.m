% Respuesta en frecuencia del sistema 1 
% obtenida de manera analítica
function retval = resp_frec1(input)
  retval = 0.5 .* (1 + exp(-1i * 2 * pi * input));
end