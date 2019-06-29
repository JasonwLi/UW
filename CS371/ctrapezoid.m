function ihat = ctrapezoid(f, xmin, xmax, n)
  ihat =0; 
  h = (xmax-xmin)/n
  x = [xmin:h:xmax]
  for i=2:n+1
      ihat = ihat+trapezoid(f, x(i-1), x(i))
  end
end