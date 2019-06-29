n = 1250;
A = ones(n);
A(1:n+1:end) = n;
b = ones(n, 1);
x = zeros(n, 1);

norm2 = 1e-6
iteration = 0
tic();
while true
    x_old=x;
    if iteration == 1000
      break
    end
    for i=1:n
        sum=0;
        for j=1:n
            if j~=i
                sum=sum+A(i,j)*x(j, 1);
            end
        end
        x(i)=(1/A(i,i))*(b(i,1)-sum);
    end
    if (abs(x_old-x) < norm2)
      break
    end
    iteration=iteration+1;
end
elapsed_time = toc()
iteration;
x;
xe = inv(A)*b;
error = norm(abs(xe-x))/norm(x);