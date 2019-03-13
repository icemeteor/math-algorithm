function x = GS(A,b,x0,TOL,Nmax)
x = x0;
n1 = size(A);
n = n1(1);
for k = 1 : Nmax
    xold = x;
    for i = 1 : n
        SUM = b(i);
        for j = 1 : i-1
            SUM = SUM - A(i,j) * x(j);
        end
        for j = i+1 : n
            SUM = SUM - A(i,j) * x(j);
        end
        x(i) = SUM/A(i,i);
    end
    
    if max(abs(x-xold)) < TOL
        fprintf('Solution found in %d iterations', k)
        disp(x)
        break
    end
end
fprintf('Maximum number of iterations reached, Nmax = %d', Nmax)
disp(x)


end
