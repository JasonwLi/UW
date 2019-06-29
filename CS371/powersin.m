function [s, maxt, numt] = powersin(x)
%POWERSIN Power s e r i e s f o r s i n ( x ) .
% y = POWERSIN( x ) t r i e s t o compute s i n ( x ) from i t s power s e r i e s .
%
% Copy righ t 2014 Cleve Moler
% Copy righ t 2014 The MathWorks, Inc .

s = 0;
t = x;
maxt = t
numt = 1
n = 1;
while s+t ~= s;
  s = s+t;
  t = -x.^2/((n+1)*(n+2)).*t;
  maxt = max(maxt, t)
  n = n + 2 ;
  numt = numt + 1;
end
