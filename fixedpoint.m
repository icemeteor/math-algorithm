function p = fixedpoint(g, p0, TOL, Nmax)
    pold = p0;
    p = g(pold);
    for i = 1: Nmax
        if abs(p - pold) < TOL
            fprintf('solution found in %d \n',i);
            disp(p);
            break
        end
            pold = p;
            p = g(p);
            
    end
        
    if i == Nmax
        fprintf('The Method failed after %f iteration, Nmax = %f \n',Nmax, Nmax) 
    end
end




