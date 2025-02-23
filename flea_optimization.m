% flea_optimization.m
% Optimize features using Flea Optimization Algorithm (FOA) and LASSO

clc; clear; close all;
load('features.mat'); % Load extracted features

% Initialize flea population
S = 20; % Number of fleas
T = size(features, 2); % Number of features
fleas = rand(S, T); % Random initialization

% LASSO Feature Selection
alpha = 0.0030; % Regularization parameter
[B, FitInfo] = lasso(features, labels, 'Lambda', alpha);
selectedFeatures = features(:, B~=0); % Select nonzero features

% FOA - Local and Global Search
for i = 1:S
    lbest = max(fleas(i, :)); % Best flea position
    lworst = min(fleas(i, :)); % Worst flea position
    fleas(i, :) = fleas(i, :) + rand() .* (lbest - lworst); % Local search
end

lglobal = max(fleas(:));
for i = 1:S
    fleas(i, :) = fleas(i, :) + rand() .* (lglobal - lworst); % Global search
end

% Save optimized features
save('optimized_features.mat', 'selectedFeatures');
disp('Feature optimization complete and saved.');
