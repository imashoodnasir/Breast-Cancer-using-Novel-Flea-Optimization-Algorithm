% evaluate_performance.m
% Evaluate classification performance

clc; clear; close all;
load('trained_model.mat');
load('optimized_features.mat');

% Predict Labels
YPred = classify(net, XTest);

% Compute Confusion Matrix
confMat = confusionmat(YTest, YPred);

% Compute Performance Metrics
accuracy = sum(diag(confMat)) / sum(confMat(:));
precision = diag(confMat) ./ sum(confMat, 1)';
recall = diag(confMat) ./ sum(confMat, 2);
f1_score = 2 * (precision .* recall) ./ (precision + recall);

% MCC Calculation
mcc = (confMat(1,1)*confMat(2,2) - confMat(1,2)*confMat(2,1)) / ...
    sqrt((confMat(1,1) + confMat(1,2)) * (confMat(1,1) + confMat(2,1)) * ...
         (confMat(2,2) + confMat(1,2)) * (confMat(2,2) + confMat(2,1)));

% Display Results
fprintf('Accuracy: %.2f%%\n', accuracy * 100);
fprintf('Precision: %.2f%%\n', mean(precision) * 100);
fprintf('Recall: %.2f%%\n', mean(recall) * 100);
fprintf('F1 Score: %.2f%%\n', mean(f1_score) * 100);
fprintf('MCC: %.2f\n', mcc);
