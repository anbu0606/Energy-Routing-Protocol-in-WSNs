function model = CreateModel()
x = [82 91 12 92 63 9 28 55 96 97 15 98 96 49 80 12 80 55 67];
y = [14 42 92 80 96 66 3 85 94 68 76 75 39 66 17 78 80 45 57];
n = numel(x);
d = zeros(n,n);
for i = 1:n-1
    for j = i+1:n
        d(i,j) = sqrt((x(i)-x(j))^2 + (y(i)-y(j))^2);
        d(j,i) = d(i,j);
    end
end
model.n = n; model.x = x; model.y = y;
model.d = d; model.xmin = 0; model.xmax = 100;
model.ymin = 0; model.ymax = 100;
end