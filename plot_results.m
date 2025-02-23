% plot_results.m
% Plot accuracy and error curves

clc; clear; close all;
load('trained_model.mat');

figure;
plot(trainingHistory.TrainingAccuracy, 'LineWidth', 2);
xlabel('Epochs');
ylabel('Accuracy (%)');
title('Training Accuracy Curve');

figure;
plot(trainingHistory.TrainingLoss, 'r', 'LineWidth', 2);
xlabel('Epochs');
ylabel('Error');
title('Training Error Curve');
