function ihat = csimpson(xmin, xmax, n)
  ihat =0; 
  h = (xmax-xmin)/n;
  x = [xmin:h:xmax];
  for i=2:n+1
      ihat = ihat+simpson(x(i-1), x(i));
  end
  ihat
  #actual_value  = quad("f", -1, 1)
end