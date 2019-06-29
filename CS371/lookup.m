function [xref, yref] = lookup()
  N = 60;
  count = 0;
  h = 0.1
  f = @(x)(x+log(x));
  xref = [];
  yref = [];
  while count <= 60
    x = 2+h*count;
    xref(end+1) = x;
    yref(end+1) = f(x);
    count = count+1;
  end
end