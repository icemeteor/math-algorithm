function [A,X] = GEcp(A)
n = length(A)-1;
X = [1:n];
p = 0;
great = 0;
for i = 1 : n-1
    for j = i : n
        MAX = max(abs(A(j,i:n))); %find the max entries of A.
        if MAX ==0
             fprintf('Method failed:matrix is rank deficient')
            break
        end
        if MAX > great
            great = MAX; % keep the maximum
            p = j;
            
        end
    end
       for k = i:n
           m = n;
           value = abs(A(p,k)); % find the maximum of every column.
           if value == great
               if m >=k
               m = k;
               q = m;
               end
           end
       end
    row1 = A(i,:); % switch row
    A(i,:) = A(p,:);
    A(p,:) = row1;
    coloumn1 = A(:,i); % switch column
    A(:,i) = A(:,q);
    A(:,q) = coloumn1;
    row2 = X(i); % switch x
    X(i) = X(q);
    X(q) = row2;
    for u = i+1:n
        A(u,:) = A(u,:) - A(u,i)/A(i,i)*A(i,:);
    
    end
end
end
        
