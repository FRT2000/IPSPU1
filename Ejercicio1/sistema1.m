% Sistema 1
function y = sistema1(x)
  y(1) = 0.5 * x(1); % Valor inicial
  for n = 2:length(x)
    y(n) = x(n) * 0.5 + 0.5 * x(n-1);
  end
end