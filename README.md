


## Project 1: `soil-classification-1`

### Overview

This project focuses on soil classification using the dataset obtained from a Kaggle competition.

### Key Components

*   **[download.sh](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-1/data/download.sh)**: A shell script to download the dataset from Kaggle. It requires setting up Kaggle credentials.

### Setup

1.  Ensure you have a Kaggle account and API token.
2.  Place your `kaggle.json` file in the `~/.kaggle/` directory.
3.  Run the `download.sh` script to download and extract the dataset:

    ```bash
    cd soil-classification-1/data/
    bash download.sh
    ```

## Project 2: `soil-classification-2`

### Overview

This project enhances soil classification by incorporating non-soil images from CIFAR-10 and MNIST datasets. It uses a ResNet18 model for image classification.

### Key Components

*   **[download.sh](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/data/download.sh)**: Downloads the soil classification dataset (part 2), CIFAR-10, and MNIST datasets from Kaggle.
*   **[ml-metrics.json](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/docs/cards/ml-metrics.json)**: Contains evaluation metrics for the trained ResNet18 model, including F1 score and validation accuracy.
*   **[project-card.ipynb](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/docs/cards/project-card.ipynb)**: Provides a high-level overview of the project, including the problem statement, data overview, methodology, and results.
*   **[soil-classification-2.ipynb](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/notebooks/soil-classification-2.ipynb)**: A Jupyter notebook containing the implementation of the soil classification model using ResNet18. Includes data loading, preprocessing, model training, and prediction generation.

### Setup

1.  Set up Kaggle API credentials as described in Project 1.
2.  Run the `download.sh` script in the `soil-classification-2/data/` directory:

    ```bash
    cd soil-classification-2/data/
    bash download.sh
    ```
3.  Install the required dependencies:
    ```bash
    pip install -r requirements.txt
    ```

### Model Training

The model training is implemented in the [soil-classification-2.ipynb](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/notebooks/soil-classification-2.ipynb) notebook. The notebook performs the following steps:

1.  **Data Loading and Preprocessing**: Loads soil, CIFAR-10, and MNIST datasets, preprocesses images, and creates training and validation sets.
2.  **Model Setup**: Initializes a pre-trained ResNet18 model and modifies the final layer for binary classification.
3.  **Training Loop**: Trains the model using the training data and evaluates it on the validation set.
4.  **Prediction Generation**: Generates predictions on the test set and saves them to a CSV file.

### Performance

The model achieved excellent performance, with a perfect F1 score of 1.0 and a top rank on the Kaggle leaderboard. Key metrics are detailed in [ml-metrics.json](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/docs/cards/ml-metrics.json).

```json
{
  "competition": "Soil Classification Part 2 (2025)",
  "model": "ResNet18",
  "metrics": {
    "f1_score": 1.0,
    "validation_accuracy": 1.0,
    "leaderboard_rank": 1
  },
  "training_details": {
    "epochs": 10,
    "batch_size": 32,
    "learning_rate": 0.0001,
    "optimizer": "Adam",
    "loss_function": "BCEWithLogitsLoss"
  },
  "dataset": {
    "total_images": 3222,
    "training_images": 2577,
    "validation_images": 645,
    "soil_images": 1622,
    "non_soil_images": 1600
  }
}
