% Respuesta impulsional del sistema 3 
% obtenida de manera analítica
function retval = resp_imp3(input)
  retval = 2.^(-input - 2) .* escalon(input) + 2.^(-input - 1) .* escalon(input - 1);
end