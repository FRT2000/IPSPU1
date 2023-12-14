%Función escalón
function retval = escalon(input)
    retval = zeros(size(input));
    retval(input >= 0) = 1;
end
