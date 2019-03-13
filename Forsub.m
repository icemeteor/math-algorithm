function x = Forsub(L) %takes in augmented matrix [L-b]
  b = L(:,end);
  n = length(b);
  x = zeros(n-1,1);
  
  for i = 1 : n
      SUM = 0;
      for j = 1 : i -1
          SUM = SUM + L(i,j)*x(j);
      end
      x(i) = (b(i) - sum(SUM))/L(i,i);
  end
      

end
