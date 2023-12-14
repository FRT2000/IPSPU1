% Respuesta impulsional del sistema 4 
% obtenida de manera analítica
function retval = resp_imp4(input)
  retval = (-0.5).^input .* (0.25 * escalon(input) + 0.5 * escalon(input - 1));
end