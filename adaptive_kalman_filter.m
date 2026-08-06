function [x_est, P] = adaptive_kalman_filter(x_prev, P_prev, z, Q, R)

% Adaptive Kalman Filter Function
% Author: Sajjad Bahoushi

%% Prediction Step

x_pred = x_prev;

P_pred = P_prev + Q;


%% Innovation Calculation

innovation = z - x_pred;


%% Adaptive Measurement Noise Update

R_new = 0.9*R + 0.1*(innovation^2);


%% Kalman Gain

K = P_pred/(P_pred + R_new);


%% Update Step

x_est = x_pred + K*innovation;

P = (1-K)*P_pred;


end
