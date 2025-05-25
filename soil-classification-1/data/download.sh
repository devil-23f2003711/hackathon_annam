#!/bin/bash

# === SETUP ===
mkdir -p ~/.kaggle
cp kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json

# === INSTALL KAGGLE CLI ===
pip install kaggle --quiet

# === DOWNLOAD & UNZIP ===
# Soil dataset
kaggle competitions download -c soil-classification
unzip soil-classification.zip -d . && rm soil-classification.zip
