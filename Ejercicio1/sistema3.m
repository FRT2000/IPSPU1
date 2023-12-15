% Sistema 3
function y = sistema3(x)
  y(1) = 0.25 * x(1); % Valor inicial
  for n = 2:length(x)
    y(n) = x(n) * 0.25 + 0.25 * x(n-1) + 0.5 * y(n-1);
  end
end