% Read points from the file
% dlmread is a function used to read a space or tab separated data file.
data = dlmread('urbanGB.txt');
figure;
scatter(data(:,1), data(:,2));
xlabel('Longitude');
ylabel('Latitude');
title('2D Point Locations');
grid on;

% Number of Data Points
n = size(data, 1);

% Number of Medoids
k = 4; 

% Construct Distance Matrix. Install pdist
D = pdist2(data, data);

% Objective Function Coefficients 
f = [D(:); zeros(n, 1)]; % (1)

% Equality Constraints for Sum(x_ij) = 1 for each i 
Aeq = [kron(eye(n), ones(1, n)), zeros(n, n)]; % (2)
beq = ones(n, 1);

% Inequality Constraints for x_ij <= y_j 
A = [kron(eye(n), -eye(n)), kron(ones(n, 1), eye(n))]; % (3)
b = zeros(n * n, 1);

% Additional Equality Constraints for Sum(y_j) = k 
Aeq = [Aeq; [zeros(1, n^2), ones(1, n)]]; % (4)
beq = [beq; k];

% Bounds
lb = zeros(n * n + n, 1); % (5)
ub = ones(n * n + n, 1); % (5)

% Integer Constraints
intcon = 1:(n * n + n);

% Solve the Integer Linear Program
options = optimoptions('intlinprog', 'Display', 'off'); % Hide solver output
sol = intlinprog(f, intcon, A, b, Aeq, beq, lb, ub, options);

% Extract x_ij and y_j from the Solution Vector
if isempty(sol)
    [cluster_assignments, medoid_indices, ~] = kmedoids(data, k);
else
    x = reshape(sol(1:n*n), [n, n]);
    y = sol((n * n + 1):end);
    cluster_assignments = zeros(n, 1);
    for i = 1:n
        [~, j] = max(x(i, :));
        cluster_assignments(i) = j;
    end
    [~, medoid_indices] = find(y > 0.5);
    medoid_indices = data(medoid_indices, :);
end

% Plotting the results
figure;
scatter(data(:, 1), data(:, 2), 50, cluster_assignments, 'filled');
hold on;
scatter(medoid_indices(:, 1), medoid_indices(:, 2), 100, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'none');
xlabel('Longitude');
ylabel('Latitude');
title('K-Medoids Clustering');
legend({'Data points', 'Medoids'}, 'Location', 'best');
grid on;
