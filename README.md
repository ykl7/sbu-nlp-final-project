# Analysing and Improving Clarification Question Generation

SBU CSE 538 Final Project by Yash Kumar Lal and Siddharth Mangalik

## Setup

### Data and Embeddings

Available at: https://github.com/raosudha89/clarification_question_generation_pytorch

### Environment

```
conda create --name nlp-project python=3.6
pip install -r requirements.txt
git clone https://github.com/pytorch/fairseq
cd fairseq
pip install --editable ./
```

## Running Code

### Baselines

Scripts are available in ```src/fairseq-scripts``` and ```run.sh``` contains a list of all commands run for the same.
To build a model using fairseq, first preprocess the data using ```src/fairseq-scripts/fairseq-preprocess.sh```, then train the required architecture with the corresponding train script. For inference, use ```src/fairseq-scripts/fairseq-inference.sh```.

### GPT-2 experiments

They are available as notebooks in ```src/``` downloaded from Colab as they were run.

### MTurk HITs

```src/mturk``` contains Amazon HIT templates for the human evaluation tasks we designed.
```data/mturk-raw``` contains input files and ```data/mturk-processed``` contains annotated files.