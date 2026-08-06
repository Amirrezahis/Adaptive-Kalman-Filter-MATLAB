function [RMSE, MAE] = performance_metrics(true_state, estimated_state)

% Performance evaluation metrics
% Author: Sajjad Bahoushi

error = true_state - estimated_state;

RMSE = sqrt(mean(error.^2));

MAE = mean(abs(error));

end
