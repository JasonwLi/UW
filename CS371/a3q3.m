a = 2;
b = 8;
randnums = a + (b-a)*rand(1, 100);
i = 1;
g = @(x) (x+log(x));
h = 0.1;
sumdiff = 0;
[xr, yr] = lookup();
while i < 101
  y_interp = LLinterp(xr, yr, randnums(i));
  y = g(randnums(i));
  sumdiff += abs(y_interp - y);
  i = i+1
end
avg = sumdiff/100
  
  