# Soil Classification Project

This repository contains code for classifying images as either "soil" or "non-soil". The project utilizes deep learning techniques, specifically a fine-tuned ResNet18 model, to distinguish between soil images and images from the CIFAR-10 and MNIST datasets. The code is structured into two main components: `soil-classification-1` and `soil-classification-2`, with the latter representing an improved version of the initial approach.

## Project Structure

-   **`soil-classification-1/`**: Contains the initial attempt at soil classification.
    -   `data/`: Includes a `download.sh` script to download the soil dataset from Kaggle.
-   **`soil-classification-2/`**: Contains an improved version of the soil classification project.
    -   `data/`: Includes a `download.sh` script to download the soil dataset (part 2), CIFAR-10, and MNIST datasets from Kaggle.
    -   `docs/`: Contains documentation, including:
        -   `cards/ml-metrics.json`: JSON file containing performance metrics of the ResNet18 model.
        -   `cards/project-card.ipynb`: Jupyter Notebook summarizing the project's problem statement, data overview, methodology, results, and achievements.
    -   `notebooks/`: Contains the main notebook:
        -   `soil-classification-2.ipynb`: Jupyter Notebook containing the data loading, preprocessing, model training, validation, and test prediction code.
-   **`README.md`**: This file, providing an overview of the project.
-   **`requirements.txt`**: List of Python packages required to run the code.

## Key Files and Components

-   **[soil-classification-2/notebooks/soil-classification-2.ipynb](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/notebooks/soil-classification-2.ipynb)**: This notebook contains the core logic for training and evaluating the ResNet18 model. It includes data loading, preprocessing, model definition, training loop, and prediction generation.
-   **[soil-classification-2/docs/cards/ml-metrics.json](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/docs/cards/ml-metrics.json)**: This file provides key metrics such as F1-score, validation accuracy, and leaderboard rank, offering insights into the model's performance.
-   **[soil-classification-2/data/download.sh](https://github.com/devil-23f2003711/hackathon_annam/blob/main/soil-classification-2/data/download.sh)**: This script automates the download of the necessary datasets from Kaggle, simplifying the setup process.
-   **[requirements.txt](https://github.com/devil-23f2003711/hackathon_annam/blob/main/requirements.txt)**: Lists the Python dependencies, ensuring that the project can be easily set up and run in a new environment.

## Getting Started

1.  **Clone the repository:**

    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```

2.  **Install the required packages:**

    ```bash
    pip install -r requirements.txt
    ```

3.  **Download the datasets:**

    Navigate to the `soil-classification-2/data/` directory and run the `download.sh` script:

    ```bash
    cd soil-classification-2/data/
    bash download.sh
    ```

    Make sure you have the Kaggle API key configured.
4.  **Run the notebook:**

    Open and run the `soil-classification-2/notebooks/soil-classification-2.ipynb` notebook to train the model and generate predictions.

## Model Architecture

The project utilizes a pre-trained ResNet18 model, fine-tuned for binary classification of soil vs. non-soil images. The final fully connected layer of the ResNet18 model is modified to output a single value, which is then passed through a sigmoid function to obtain a probability score.

```mermaid
sequenceDiagram
    participant User
    participant Jupyter Notebook
    participant ResNet18 Model
    participant PyTorch
    User->>Jupyter Notebook: Executes notebook cells
    Jupyter Notebook->>PyTorch: Load ResNet18 model
    PyTorch->>ResNet18 Model: Initialize with pretrained weights
    Jupyter Notebook->>PyTorch: Define loss function (BCEWithLogitsLoss) and optimizer (Adam)
    loop For each epoch
        Jupyter Notebook->>PyTorch: Load training data in batches
        Jupyter Notebook->>ResNet18 Model: Forward pass
        ResNet18 Model->>Jupyter Notebook: Output predictions
        Jupyter Notebook->>PyTorch: Calculate loss and update model weights
    end
    Jupyter Notebook->>User: Print validation accuracy and loss
    Jupyter Notebook->>ResNet18 Model: Load test data
    ResNet18 Model->>Jupyter Notebook: Generate predictions
    Jupyter Notebook->>User: Save submission.csv
