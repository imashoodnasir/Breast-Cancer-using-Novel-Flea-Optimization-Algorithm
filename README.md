# Breast Cancer Detection using Novel Flea Optimization Algorithm

This repository contains the MATLAB implementation of **Breast Cancer Detection** using a **Novel Flea Optimization Algorithm (FOA)** for feature selection and classification. The project utilizes **ResNet-50** for feature extraction and **LASSO with FOA** to optimize features before classification.

## 🚀 Features
- **Preprocessing**: Augments and resizes histopathological images.
- **Feature Extraction**: Uses **ResNet-50** with **transfer learning**.
- **Flea Optimization Algorithm (FOA)**: Selects the most discriminant features.
- **Classification**: Implements **Neural Networks & Decision Trees** for breast cancer classification.
- **Performance Evaluation**: Computes **accuracy, precision, recall, F1-score, MCC, and Kappa**.

---

## 📂 Project Structure
```
├── load_data.m              # Load and preprocess dataset
├── feature_extraction.m     # Extract features using ResNet-50
├── flea_optimization.m      # Optimize features using FOA and LASSO
├── train_classifiers.m      # Train different classifiers (NN, Trees)
├── evaluate_performance.m   # Evaluate model performance
├── plot_results.m           # Plot accuracy and error curves
├── README.md                # Project Documentation
```

---

## 🛠 Installation & Requirements

### **Requirements**
- MATLAB **R2022a** (or later)
- Image Processing Toolbox
- Deep Learning Toolbox
- Pretrained ResNet-50 Model

### **Installation**
Clone this repository:
```sh
git clone https://github.com/imashoodnasir/Breast-Cancer-using-Novel-Flea-Optimization-Algorithm.git
cd Breast-Cancer-using-Novel-Flea-Optimization-Algorithm
```

---

## 📜 Usage

### **1️⃣ Load Dataset & Preprocessing**
Modify `datasetPath` in **`load_data.m`** to your dataset location:
```matlab
datasetPath = 'path_to_images';
```
Then run:
```sh
matlab -batch "run('load_data.m')"
```

### **2️⃣ Feature Extraction**
Extract features using **ResNet-50**:
```sh
matlab -batch "run('feature_extraction.m')"
```

### **3️⃣ Flea Optimization for Feature Selection**
Run the **Flea Optimization Algorithm (FOA)**:
```sh
matlab -batch "run('flea_optimization.m')"
```

### **4️⃣ Train Neural Networks & Decision Trees**
Train classifiers:
```sh
matlab -batch "run('train_classifiers.m')"
```

### **5️⃣ Evaluate Performance**
Evaluate accuracy, F1-score, MCC, and Kappa:
```sh
matlab -batch "run('evaluate_performance.m')"
```

### **6️⃣ Plot Accuracy & Error Curves**
```sh
matlab -batch "run('plot_results.m')"
```

---

## 📊 Results

### **Performance Metrics**
| Metric       | Value (40x) | Value (100x) | Value (200x) | Value (400x) |
|-------------|------------|-------------|-------------|-------------|
| Accuracy    | 99.20%     | 99.62%      | 99.50%      | 99.34%      |
| Precision   | 98.86%     | 99.58%      | 99.13%      | 99.16%      |
| Recall      | 98.84%     | 99.29%      | 98.89%      | 99.22%      |
| F1-Score    | 98.85%     | 99.43%      | 99.08%      | 99.08%      |
| MCC         | 95.5%      | 98.99%      | 98.87%      | 97.53%      |

✅ **Feature optimization significantly improves classification performance!**

---

## 🤝 Contributions & Issues
Contributions are welcome! Feel free to **fork**, **open issues**, or **submit pull requests**.

---

## 📜 License
This project is licensed under the **MIT License**.

---

🎯 **Developed for Breast Cancer Detection using Deep Learning & Optimization Algorithms**
