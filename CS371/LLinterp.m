
function y = LLinterp(xref, yref, x)
  n=size(xref,2);
  lagrange=ones(n,size(x,2));
  for i=1:n
     for j=1:n
        if (i~=j)
           lagrange(i,:)=lagrange(i,:).*(x-xref(j))/(xref(i)-xref(j));
        end
     end
  end
  y=0;
  for i=1:n
     y=y+yref(i)*lagrange(i,:);
  end
end