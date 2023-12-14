% Respuesta impulsional del sistema 2 
% obtenida de manera analítica
function retval = resp_imp2(input)
  retval = 0.5 * (delta(input) - delta(input - 1));
end