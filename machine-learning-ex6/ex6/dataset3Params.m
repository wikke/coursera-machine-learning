function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C_list = [0.01 0.03 0.1 0.3 1 3 10 30];
sigma_list = [0.01 0.03 0.1 0.3 1 3 10 30];
min_error = 999999;

% printf("C\tsigma\terror\n");

for i = 1: length(C_list),
  for j = 1: length(sigma_list),
    curr_C = C_list(i);
    curr_sigma = sigma_list(j);

    model= svmTrain(X, y, curr_C, @(x1, x2) gaussianKernel(x1, x2, curr_sigma));
    predictions = svmPredict(model, Xval);
    error = mean(double(predictions ~= yval));

    % printf('%f\t%f\t%f\n', curr_C, curr_sigma, error);

    if error < min_error,
      C = curr_C;
      sigma = curr_sigma;
      min_error = error;
    end;
  end;
end;

% =========================================================================

end
