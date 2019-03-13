function A = GEpp(A)
n = size(A);
n = n(1);
    for i = 1 : n -1
        MAX = 0;
        for k = i:n
            if abs(A(k,i)) > MAX
                MAX = abs(A(k,i));
                p = k;
            end
         
        end
    
            
           if p > i
               row = A(p,:);
               A(p,:) = A(i,:);
               A(i,:) = row;
           end
           for j = i+1 : n
               m = A(j,i)/A(i,i);
               A(j,:) = A(j,:) - m * A(i,:);
           end
           if A(i,i) == 0
               fprintf('Method failed:matrix is rank deficient');
           end
    end
end