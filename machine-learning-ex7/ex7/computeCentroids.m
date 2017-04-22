function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% Algorithm 1

%centroid_count = zeros(K, 1);

%for i = 1:m,
%  index = idx(i);
%  centroids(index,:) = centroids(index,:) + X(i,:);
%  centroid_count(index) = centroid_count(index) + 1;
%end;

%for i = 1:K,
%  if centroid_count(i) != 0,
%    centroids(i,:) = centroids(i,:) / centroid_count(i);
%  end;
%end;


% Algorithm 2

for i=1:K,
  selected_idx = (idx == i);
  production_map = selected_idx;

  % wish there would be a more graceful way to expand
  for j=1:n-1,
    production_map = [production_map selected_idx];
  end;

  centroids(i,:) = sum(X .* production_map) / sum(selected_idx);
end;

% =============================================================


end

