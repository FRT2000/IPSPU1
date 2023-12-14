% Respuesta en frecuencia del sistema 4 
% obtenida de manera analítica
function retval = resp_frec4(input)
  retval = (1 - exp(-1i * 2 * pi * input)) ./ (4 + 2 .* exp(-1i * 2 * pi * input));
end