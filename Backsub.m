function x = Backsub(L) %takes in augmented matrix [L-b]
  n = length(L);
  b = L(:,end);
  x = zeros(n-1,1);
  
  for i = 1 : n-1
      SUM = 0;
      for j = 1 : i - 1
          SUM = SUM + L(n-i,n-j) * x(n - j);
      end
      x(n-i) = (b(n-i) - SUM)/L(n-i,n-i);
  end
      

end