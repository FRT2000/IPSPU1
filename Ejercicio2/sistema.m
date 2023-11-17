% Implementa el sistema: y[n]= x[n] - 0.5*x[n-8820] + 0.25*x[n-17640] 
function y = sistema(x)
    A = 8820 %retardo 1
    B = 17640 %retardo 2 
    L = length(x)
    
    a = -0.5 % h[A]
    b = 0.25 % h[B]
    
    y(1:A,1:2) = x(1:A,1:2)
    y(A+1:B,1:2) = x(A+1:B,1:2) + a*x(1:A,1:2)
    y(B+1:L,1:2) = x(B+1:L,1:2) + a*x(A+1:L-A,1:2) + b*x(1:L-B,1:2)
end