function retval = sistema(input)
    A = 8820; %retardo 1
    B = 17640; %retardo 2 
    L = length(input);
    retval = zeros(size(input));

    a = -0.5; % h[A]
    b = 0.25; % h[B]

    retval(1:A) = input(1:A);
    retval(A+1:B) = input(A+1:B) + a*input(1:A);
    retval(B+1:L) = input(B+1:L) + a*input(A+1:L-A) + b*input(1:L-B);
end