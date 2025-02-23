% load_data.m
% Load and preprocess dataset

clc; clear; close all;

% Set dataset path
datasetPath = 'path_to_images'; % Change this to your dataset location
imageSize = [224, 224]; % Resize images

% Load images with labels from folder names
imageDS = imageDatastore(datasetPath, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

% Apply augmentation
augmentedDS = augmentedImageDatastore(imageSize, imageDS);

% Save preprocessed data
save('preprocessed_data.mat', 'augmentedDS');
disp('Data preprocessing complete and saved.');
