% Delta de Kronecker
function retval = delta(input)
    retval = zeros(size(input));
    retval(input == 0) = 1;
end