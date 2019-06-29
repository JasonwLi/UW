f = @(x)(200/9.8)*cos(x)*sin(x) - 5
a = 45
b = 90
t = 1e-6
actual_root = 50.521484
prev_error = 0
p = 0
while abs(b-a) > t
  c = (a+b)/2
  if f(a)*f(c) <= 0
    b = c
  else
    a = c
  end
  prev_error = error
  error = c - actual_root
  p = log10(error)/log10(prev_error)
end
res = (a+b)/2
