
function i = trapezoid(xmin, xmax)
  f = @(x) x/(x^2+1);
  i = ((xmax - xmin) / 2) * (f(xmin) + f(xmax));
end