clc;
clear;
close all;

% Adaptive Kalman Filter MATLAB Implementation
% Author: Sajjad Bahoushi

%% Simulation Parameters

N = 200;

%% Generate True Signal

x_true = zeros(1,N);
z = zeros(1,N);

x = 0;

for k = 1:N
    
    x = x + 1;
    x_true(k) = x;
    
    % Measurement noise
    if k < 100
        noise = randn;
    else
        noise = 3*randn;
    end
    
    z(k) = x + noise;

end


%% Adaptive Kalman Filter

x_est = zeros(1,N);

P = 1;
Q = 0.01;
R = 1;

x_est(1)=z(1);

for k = 2:N
    
    % Prediction
    x_pred = x_est(k-1);
    P_pred = P + Q;
    
    
    % Innovation
    innovation = z(k)-x_pred;
    
    
    % Adaptive noise estimation
    R = 0.9*R + 0.1*(innovation^2);
    
    
    % Kalman Gain
    K = P_pred/(P_pred+R);
    
    
    % Update
    x_est(k)=x_pred+K*innovation;
    
    P=(1-K)*P_pred;

end


%% Results

figure;

plot(x_true,'LineWidth',2);
hold on;

plot(z,'--');

plot(x_est,'LineWidth',2);

grid on;

legend('True State',...
       'Measurement',...
       'Adaptive Kalman Estimate');

xlabel('Time Step');
ylabel('State');

title('Adaptive Kalman Filter Performance');
