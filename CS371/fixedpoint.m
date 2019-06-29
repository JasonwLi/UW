f = @(x) (sqrt((x+3-x^4) / 2 ))


x = 1
i = 0
do 
  i = i + 1;
  x = f(x)
until (i == 20)
res = x