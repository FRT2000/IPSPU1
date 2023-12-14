% Respuesta en frecuencia del sistema 3 
% obtenida de manera analítica
function retval = resp_frec3(input)
  retval = (1 + exp(-1i * 2 * pi * input)) ./ (4 - 2 .* exp(-1i * 2 * pi * input));
end