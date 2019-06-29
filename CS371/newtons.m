i = 1;
y = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
t = 10^-6;
f = @(x)((x+sqrt(x))*(20-x+sqrt(20-x)))-155.55;
g = @(x)(x+sqrt(x))*(-1/(2*sqrt(20-x)) - 1)+(1/2*sqrt(x)+1)*((20-x)+sqrt(20-x));
while true
    i = i+  + 1;
    if g(y(i-1)) == 0
      break
    end
    y(i) = y(i-1) - f(y(i-1)) / g(y(i-1))
    if (abs(y(i) - y(i-1)) < t)
      break
    end
end
t = y(i)
