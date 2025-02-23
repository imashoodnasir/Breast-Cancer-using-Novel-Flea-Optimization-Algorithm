% train_classifiers.m
% Train neural network classifiers

clc; clear; close all;
load('optimized_features.mat');

% Train-Test Split (70-30)
trainRatio = 0.7;
[XTrain, YTrain, XTest, YTest] = splitDataset(selectedFeatures, labels, trainRatio);

% Define Neural Network
layers = [
    featureInputLayer(size(XTrain,2))
    fullyConnectedLayer(64)
    reluLayer
    fullyConnectedLayer(32)
    reluLayer
    fullyConnectedLayer(2) % Assuming binary classification
    softmaxLayer
    classificationLayer];

options = trainingOptions('adam', 'MaxEpochs', 10, 'MiniBatchSize', 20);

% Train network
net = trainNetwork(XTrain, YTrain, layers, options);

% Save trained model
save('trained_model.mat', 'net');
disp('Training complete and model saved.');
