# 🌱 Soil Classification Hackathon

Welcome to the **Soil Classification Hackathon Repository** — a two-part machine learning challenge focused on predicting soil types using structured data and AI modeling techniques.

This repository contains all code, data processing scripts, notebooks, and supporting documentation needed to explore and solve both classification tasks.

---

## 📁 Directory Structure

```
.
├── soil-classification-1/         # Challenge 1: Soil Classification - Part 1
│   ├── notebooks/                 # Jupyter notebook for data analysis & modeling
│   ├── docs/                      # Architecture diagram and related materials
│   └── data/                      # Script to download dataset
│
├── soil-classification-2/         # Challenge 2: Soil Classification - Part 2
│   ├── notebooks/                 # Jupyter notebook for continued modeling
│   ├── docs/                      # Architecture and reference cards
│   └── data/                      # Script to download dataset
│
├── requirements.txt               # Python dependencies
├── .gitignore                     # Files ignored by Git
└── README.md                      # Project documentation (you’re here!)
```

---

## 📌 Challenges Overview

### 🔹 Challenge 1 – `soil-classification-1`

- **Task:** Multi-class classification of soil images  
- **Goal:** Predict the soil type as one of the following:
  - Alluvial soil  
  - Black Soil  
  - Clay soil  
  - Red soil  
- **Objective:** Build a strong baseline model for soil type prediction

---

### 🔹 Challenge 2 – `soil-classification-2`

- **Task:** Binary classification of images  
- **Goal:** Determine whether an image is a **soil image or not**  
- **Objective:** Train a model to distinguish soil images from non-soil images

---

## 🛠️ Installation

### 1. Clone the Repository
```bash
git clone https://github.com/devil-23f2003711/hackathon_annam.git
```

### 2. Change the working directory
```bash
cd hackathon_annam
```

### 3. Create & Activate Virtual Environment
- #### Create Virtual Environment
  
```bash
python -m venv venv
```

- #### Activate Virtual Environment
For Linux/macOS:
```
source venv/bin/activate
```
For Windows:
```
venv\\Scripts\\activate
```

### 4. Install Required Package Dependencies
```bash
pip install -r requirements.txt
```

### 5. Downloading the datasets:

Ensure you have a Kaggle account and API token.

For soil-classification-1:
- Place your `kaggle.json` file in the `soil-classification-1/data` directory.
```bash
cd soil-classification-1/data
chmod +x download.sh
./download.sh
```

For soil-classification-2:
- Place your `kaggle.json` file in the `soil-classification-2/data` directory.
```bash
cd soil-classification-2/data
chmod +x download.sh
./download.sh
```

---

## 📒 Notebooks

Both challenges include Jupyter notebooks that cover:
- Data exploration
- Preprocessing
- Model training & evaluation
- Performance metrics

### Notebooks:
- `soil-classification-1/notebooks/soil-classification-1.ipynb`
- `soil-classification-2/notebooks/soil-classification-2.ipynb`

---

## 📊 Documentation

Each challenge includes a `docs/` directory that contains supporting reference materials:

```
docs/
├── architecture.png # System architecture diagram
└── cards/
├── ml-metrics.json # Key machine learning evaluation metrics
└── project-card.ipynb # Jupyter notebook summarizing project details
```


## 🧠 Authors & Credits

This project was developed as part of the **Annam.AI Hackathon**. Thanks to the organizers and dataset providers for the opportunity.

---

## 📜 License

This project is licensed under the MIT License. See `LICENSE` for more details.
