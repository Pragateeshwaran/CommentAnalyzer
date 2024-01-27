
## Overview

This project aims to classify toxic comments using a neural network implemented with TensorFlow and Keras. The model is trained on a dataset containing labeled comments with various toxicity categories, such as 'toxic,' 'severe_toxic,' 'obscene,' 'threat,' 'insult,' and 'identity_hate.' Additionally, a simple Tkinter GUI is provided for users to input sentences and receive toxicity predictions.

## Getting Started

### Prerequisites

Make sure you have the following dependencies installed:

- Python
- TensorFlow
- pandas
- numpy
- Tkinter (for GUI)

You can install dependencies using the following command:

```bash
pip install tensorflow pandas numpy
```

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Pragateeshwaran/comments-classifier-LSTM.git
   cd comments-classifier-LSTM
   ```

2. Run the Python script:

   ```bash
   python main.ipynb
   ```

## Usage

1. Run the provided Python script containing the model training and Tkinter GUI setup.
2. Input a sentence in the GUI and click the 'Submit' button.
3. The GUI will display the predicted toxicity categories for the input sentence.

## Model Details

The neural network model architecture includes an Embedding layer, Bidirectional LSTM layers, and Dense layers. The model is trained using the Adam optimizer and Binary Crossentropy loss. After training, the model is saved in HDF5 format as 'toxicity.h5'.


Feel free to explore and enhance the project to suit your needs!
