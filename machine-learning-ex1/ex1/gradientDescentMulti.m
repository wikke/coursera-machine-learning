function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    theta0 = theta(1, 1);
    theta1 = theta(2, 1);
    theta2 = theta(3, 1);

    XT1 = X(:, 1);
    XT2 = X(:, 2);
    XT3 = X(:, 3);

    theta0 = theta0 - sum((X * theta - y) .* XT1) * alpha / m;
    theta1 = theta1 - sum((X * theta - y) .* XT2) * alpha / m;
    theta2 = theta2 - sum((X * theta - y) .* XT3) * alpha / m;

    theta = [theta0; theta1; theta2];

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
