% Respuesta impulsional del sistema 1 
% obtenida de manera analítica
function retval = resp_imp1(input)
  retval = 0.5 * (delta(input) + delta(input - 1));
end