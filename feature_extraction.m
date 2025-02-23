% feature_extraction.m
% Extract features from images using ResNet-50

clc; clear; close all;
load('preprocessed_data.mat');

% Load pretrained ResNet-50
net = resnet50;
layer = 'fc1000'; % Fully connected layer

% Extract features
features = activations(net, augmentedDS, layer, 'OutputAs', 'rows');

% Save extracted features
save('features.mat', 'features');
disp('Feature extraction complete and saved.');
