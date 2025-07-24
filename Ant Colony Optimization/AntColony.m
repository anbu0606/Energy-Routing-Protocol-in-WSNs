function myaco()
start_time = cputime;
miter = 300; m = 300; n = 19;
e = 1.15; alpha = 1; beta = 1;
t = 0.0001 * ones(n); el = 0.97;

% Coordinates
for i = 1:n
    x(i) = rand * 110;
    y(i) = rand * 110;
end
figure, plot(x,y,'--o','MarkerFaceColor','k','MarkerEdgeColor','b','MarkerSize',10);
title('Coordinates of Cities'); xlabel('x (km)'); ylabel('y (km)');

% Distance & Heuristic
for i = 1:n
    for j = 1:n
        d(i,j) = sqrt((x(i)-x(j))^2 + (y(i)-y(j))^2);
        h(i,j) = d(i,j)==0 ? 0 : 1/d(i,j);
    end
end

for i = 1:miter
    for j = 1:m
        start_places(j,1) = fix(1+rand*(n-1));
    end
    tour = ant_tour(start_places, m, n, h, t, alpha, beta);
    tour = [tour, tour(:,1)];
    [cost, f] = calculate_cost(m, n, d, tour, el);
    t = update_the_trace(m, n, t, tour, f, e);
    average_cost(i) = mean(cost);
    [min_cost(i), best_index] = min(cost);
    besttour(i,:) = tour(best_index,:);
end

[k, l] = min(min_cost);
for i = 1:n+1
    X(i) = x(besttour(l,i));
    Y(i) = y(besttour(l,i));
end
figure, plot(X, Y, '--o', 'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
xlabel('x (km)'); ylabel('y (km)');
title(['Minimum Cost (Total Length) = ', num2str(k)]);
end_time = cputime;
fprintf('\nComputed Time = %f\n', end_time - start_time);
end