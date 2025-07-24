function [shortestPathLength, shortestPath] = NN(nodes)
%Initializing the variables
nodes = 100 * rand(18,2);
N_nodes = size(nodes,1);
distances = pdist2(nodes, nodes);
distances(distances==0) = realmax;
shortestPathLength = inf;
shortestPath = [];

%Iterate through the loop for shortest path
for i = 1:N_nodes
    startNode = i;
    path = startNode;
    distanceTraveled = 0;
    Newdistances = distances;
    currentNode = startNode;

    for j = 2:N_nodes
        [min_dist, nextNode] = min(Newdistances(:, currentNode));
        path(end+1,1) = nextNode;
        distanceTraveled = distanceTraveled + distances(currentNode,nextNode);
        Newdistances(currentNode, :) = realmax;
        currentNode = nextNode;
    end

    path(end+1,1) = startNode; % Return to the start
    distanceTraveled = distanceTraveled + distances(currentNode, startNode);

    if (distanceTraveled < shortestPathLength)
        shortestPathLength = distanceTraveled;
        shortestPath = path;
    end
end

% Plotting
figure
x_min = min(nodes(:,1)) - 3;
x_max = max(nodes(:,1)) + 3;
y_min = min(nodes(:,2)) - 3;
y_max = max(nodes(:,2)) + 3;
plot(nodes(:,1), nodes(:,2), 'r*');
line(nodes(:,1), nodes(:,2), 'color','black');
axis([x_min x_max y_min y_max]);
xlabel('x');
ylabel('y');
axis equal;
grid on;
hold on;

xd = []; yd = [];
for i = 1:(N_nodes+1)
    xd(i) = nodes(shortestPath(i),1);
    yd(i) = nodes(shortestPath(i),2);
end
line(xd, yd, 'color', 'r');
title(['Shortest Path Length = ', num2str(shortestPathLength)]);
hold off;
end