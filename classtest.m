x =2;
g = @(x) (x-1)^2 + 1;
for i=1:10
    x = g(x);
end
x
n = 10;
X = (1:n);
