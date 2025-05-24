#!/bin/bash

# === SETUP ===
mkdir -p ~/.kaggle
cp kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json

# === INSTALL KAGGLE CLI ===
pip install kaggle --quiet

# === DOWNLOAD & UNZIP ===
# Soil dataset
kaggle competitions download -c soil-classification-part-2
unzip soil-classification-part-2.zip -d . && rm soil-classification-part-2.zip

# CIFAR-10
kaggle datasets download -d ayush1220/cifar10 -p . --unzip

# MNIST PNG
kaggle datasets download -d jidhumohan/mnist-png -p . --unzip
