function A = GE(A)
n = length(A);
    for i = 1 : n - 1
        for p = i : n-1 
            if A(p,i) ~= 0
            break
         
            end
            if p == n -1
                 fprintf('Method failed:matrix is rank deficient');
            end
           end
           if p > i
               row = A(p,:);
               A(p,:) = A(i,:);
               A(i,:) = row;
           end
           for j = i+1 : n-1
               m = A(j,i)/A(i,i);
               A(j,:) = A(j,:) - m * A(i,:);
           end
           if A(i,i) == 0
               fprintf('Method failed:matrix is rank deficient');
           end
    end
end