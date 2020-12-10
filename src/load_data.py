import os
import sys
import json
import argparse
import pandas as pd

from constants import *

def get_args():
    parser = argparse.ArgumentParser(description='Data loader')
    parser.add_argument('--dataset', help='Dataset to be used')
    parser.add_argument('--mode', help='Train or test or analysis or fairseq-prep or fairseq-test-prep')
    parser.add_argument('--input', help='context or concat')
    params, _ = parser.parse_known_args()
    return params

# function to load data as a triple (context, question, answer) for train mode of Amazon and StackExchange data formats
def load_concat_data(ques_file, ans_file, context_file):
    dataset = []
    for q, a, c in zip(ques_file, ans_file, context_file):
        # mimic Rao and Daume, 2018 preprocessing
        if len(q.split()) <= 20 and len(c.split()) <= 100 and len(a.split()) <= 20:
            dataset.append((q.lower().strip(), c.lower().strip() + ' ' + a.lower().strip()))
    return dataset

def load_context_data(ques_file, context_file):
    dataset = []
    for q, c in zip(ques_file, context_file):
        # mimic Rao and Daume, 2018 preprocessing
        if len(q.split()) <= 20 and len(c.split()) <= 100:
            dataset.append((q.lower().strip(), c.lower().strip()))
    return dataset

# function to load Amazon dataset, have option to load IR answers if a flag is set for test time
def load_amazon_data(mode, input):
    if mode == 'train':
        ques_file = open(AMAZON_TRAIN_QUESTIONS, 'r')
        ans_file = open(AMAZON_TRAIN_ANSWERS, 'r')
        context_file = open(AMAZON_TRAIN_CONTEXTS, 'r')

        if input == 'concat':
            train_data = load_concat_data(ques_file, ans_file, context_file)
        elif input == 'context':
            train_data = load_context_data(ques_file, context_file)

        ques_file = open(AMAZON_TUNE_QUESTIONS, 'r')
        ans_file = open(AMAZON_TUNE_ANSWERS, 'r')
        context_file = open(AMAZON_TUNE_CONTEXTS, 'r')
        
        if input == 'concat':
            dev_data = load_concat_data(ques_file, ans_file, context_file)
        elif input == 'context':
            dev_data = load_context_data(ques_file, context_file)
        return train_data, dev_data
    elif mode == 'test':
        return []

# function to load StackExchange dataset, remember to have option to load IR answers if a flag is set for test time
def load_stackexchange_data(mode, input):
    if mode == 'train':
        ques_file = open(ASKUBUNTU_TRAIN_QUESTIONS, 'r')
        ans_file = open(ASKUBUNTU_TRAIN_ANSWERS, 'r')
        context_file = open(ASKUBUNTU_TRAIN_CONTEXTS, 'r')

        if input == 'concat':
            train_data = load_concat_data(ques_file, ans_file, context_file)
        elif input == 'context':
            train_data = load_context_data(ques_file, context_file)

        ques_file = open(ASKUBUNTU_TUNE_QUESTIONS, 'r')
        ans_file = open(ASKUBUNTU_TUNE_ANSWERS, 'r')
        context_file = open(ASKUBUNTU_TUNE_CONTEXTS, 'r')

        if input == 'concat':
            dev_data = load_concat_data(ques_file, ans_file, context_file)
        elif input == 'context':
            dev_data = load_context_data(ques_file, context_file)
        return train_data, dev_data
    elif mode == 'test':
        ques_file = open(ASKUBUNTU_TEST_QUESTIONS, 'r')
        ans_file = open(ASKUBUNTU_TEST_ANSWERS, 'r')
        context_file = open(ASKUBUNTU_TEST_CONTEXTS, 'r')

        if input == 'concat':
            test_data = load_concat_data(ques_file, ans_file, context_file, False)
        elif input == 'context':
            test_data = load_context_data(ques_file, context_file, False)
        return test_data

def parse_clarq_data(df):
    contexts = list(df['context'])
    answers = list(df['answer'])
    clarqs = list(df['cquestion'])
    return contexts, answers, clarqs

def load_clarq_data(fname, mode):
    if fname == 'train':
        train_df = pd.read_json(CLARQ_TRAIN, lines=True)
        contexts, answers, clarqs = parse_clarq_data(train_df)

        # 80-20 split for train and dev data
        train_idx = int(len(contexts) * 0.8)

        train_clarqs = clarqs[:train_idx]
        train_contexts = contexts[:train_idx]
        train_answers = answers[:train_idx]

        dev_clarqs = clarqs[train_idx:len(contexts)]
        dev_contexts = contexts[train_idx:len(contexts)]
        dev_answers = answers[train_idx:len(contexts)]

        if mode == 'concat':
            # train_data, dev_data = [], []
            # for q, a, c in zip(train_clarqs, train_answers, train_contexts):
            #     train_data.append((q.lower().strip(), a.lower().strip(), c.lower().strip()))
            # for q, a, c in zip(dev_clarqs, dev_answers, dev_contexts):
            #     dev_data.append((q.lower().strip(), a.lower().strip(), c.lower().strip()))
            # for same preprocessing as Rao and Daume, use lines below
            # this reduces size of concat data by a lot
            train_data = load_concat_data(train_clarqs, train_answers, train_contexts)
            dev_data = load_concat_data(dev_clarqs, dev_answers, dev_contexts)
        elif mode == 'context':
            # train_data, dev_data = [], []
            # for q, c in zip(train_clarqs, train_contexts):
            #     train_data.append((q.lower().strip(), c.lower().strip()))
            # for q, a, c in zip(dev_clarqs, dev_contexts):
            #     dev_data.append((q.lower().strip(), c.lower().strip()))
            # for same preprocessing as Rao and Daume, use lines below
            # this reduces size of concat data by a lot
            train_data = load_context_data(train_clarqs, train_contexts)
            dev_data = load_context_data(dev_clarqs, dev_contexts)

        return train_data, dev_data
    elif fname == 'test':
        test_df = pd.read_json(CLARQ_TEST, lines=True)
        contexts, answers, clarqs = parse_clarq_data(test_df)

        if mode == 'concat':
            # test_data = []
            # for q, c in zip(clarqs, answers, contexts):
            #     train_data.append((q.lower().strip(), a.lower().split(), c.lower().strip()))
            # for same preprocessing as Rao and Daume, use lines below
            # this reduces size of concat data by a lot
            test_data = load_concat_data(clarqs, answers, contexts, False)
        elif mode == 'context':
            # test_data = []
            # for q, c in zip(clarqs, contexts):
            #     train_data.append((q.lower().strip(), c.lower().strip()))
            # for same preprocessing as Rao and Daume, use lines below
            # this reduces size of concat data by a lot
            test_data = load_context_data(clarqs, contexts, False)

        return test_data

# use training data to build joint vocabulary
def build_vocab(data):
    vocab = set()
    for question, prompt in data:
        vocab.update(set(question.split()))
        vocab.update(set(prompt.split()))
    return ['<OOV>', '<EOS>', '<SOS>', '<PAD>'] + list(vocab)

# return word and index mapping from the vocab itself
def word_idx_mapping(vocab):
    word2idx = {}
    idx2word = {}
    for i, word in enumerate(vocab):
        word2idx[word] = i
        idx2word[i] = word
    return word2idx, idx2word

# simple statistics to understand what the data looks like
def basic_analysis(data):
    print(f'Number of records in dataset are: {len(data)}')
    ques_len_sum_total = 0
    prompt_len_sum_total = 0
    invalid_prompt = 0
    max_ques_len = 0
    max_prompt_len = 0
    for record in data:
        ques_len_sum_total += len(record[0].split())
        if len(record[0].split()) > max_ques_len:
            max_ques_len = len(record[0].split())
        prompt_len_sum_total += len(record[1].split())
        if len(record[1].split()) > max_prompt_len:
            max_prompt_len = len(record[1].split())
        if len(record[1].split()) > 300:
            invalid_prompt += 1
    print(f'Average length of prompts is: {prompt_len_sum_total/len(data)}')
    print(f'Max prompt length is: {max_prompt_len}')
    print(f'Average length of questions is: {ques_len_sum_total/len(data)}')
    print(f'Max question length is: {max_ques_len}')
    print(f'Number of invalid (too long) prompts: {invalid_prompt}')

# for fairseq-prep mode (train and dev sets only), write the data to .src and .trg files
def write_to_file(train_set, dev_set, dataset, input_style):
    if dataset == 'amazon':
        base_path = AMAZON_DATA
    elif dataset == 'stackexchange':
        base_path = ASKUBUNTU_DATA
    elif dataset == 'clarq':
        base_path = CLARQ_DATA
    train_src_file = open(base_path+'/'+input_style+'-train.src', 'w+')
    train_trg_file = open(base_path+'/'+input_style+'-train.trg', 'w+')
    dev_src_file = open(base_path+'/'+input_style+'-dev.src', 'w+')
    dev_trg_file = open(base_path+'/'+input_style+'-dev.trg', 'w+')

    for record in train_set:
        train_src_file.write(record[1]+'\n')
        train_trg_file.write(record[0]+'\n')

    for record in dev_set:
        dev_src_file.write(record[1]+'\n')
        dev_trg_file.write(record[0]+'\n')

    train_src_file.close()
    train_trg_file.close()
    dev_src_file.close()
    dev_trg_file.close()

# same as write_to_file method for train and dev
def process_stackexchange_test_data(test_set, input_style):
    base_path = ASKUBUNTU_DATA
    test_src_file = open(base_path+'/'+input_style+'-test.src', 'w+')
    test_trg_file = open(base_path+'/'+input_style+'-test.trg', 'w+')

    print(base_path+'/'+input_style+'-test.src')

    for record in test_set:
        test_src_file.write(record[1]+'\n')
        test_trg_file.write(record[0]+'\n')

    test_src_file.close()
    test_trg_file.close()

def process_clarq_test_data(test_set, input_style):
    base_path = CLARQ_DATA
    test_src_file = open(base_path+'/'+input_style+'-test.src', 'w+')
    test_trg_file = open(base_path+'/'+input_style+'-test.trg', 'w+')

    for record in test_set:
        test_src_file.write(record[1]+'\n')
        test_trg_file.write(record[0]+'\n')

    test_src_file.close()
    test_trg_file.close()

# needs to be different since amazon data files are arranged differently
def process_amazon_test_data(test_set, input_style):
    pass

# is called from train.py as well as its own standalone file with arguments
def main(params):
    if params.mode == 'analysis':
        if params.dataset == 'amazon':
            train_set, dev_set = load_amazon_data('train', params.input)
            test_set = load_amazon_data('test', params.input)
        elif params.dataset == 'stackexchange':
            train_set, dev_set = load_stackexchange_data('train', params.input)
            test_set = load_stackexchange_data('test', params.input)
        elif params.dataset == 'clarq':
            train_set, dev_set = load_clarq_data('train', params.mode)
            test_set = load_clarq_data('test', params.mode)
        print('Training set statistics')
        basic_analysis(train_set)
        print('Dev set statistics')
        basic_analysis(dev_set)
    elif params.mode == 'fairseq-prep':
        if params.dataset == 'amazon':
            train_set, dev_set = load_amazon_data('train', params.input)
        elif params.dataset == 'stackexchange':
            train_set, dev_set = load_stackexchange_data('train', params.input)
        elif params.dataset == 'clarq':
            train_set, dev_set = load_clarq_data('train', params.input)
        write_to_file(train_set, dev_set, params.dataset, params.input)
    elif params.mode == 'fairseq-test-prep':
        if params.dataset == 'stackexchange':
            test_set = load_stackexchange_data('test', params.input)
            process_stackexchange_test_data(test_set, params.input)
        elif params.dataset == 'amazon':
            # fill here
            pass
        elif params.dataset == 'clarq':
            test_set = load_clarq_data('test', params.input)
            process_clarq_test_data(test_set, params.input)
    else:
        if params.dataset == 'amazon':
            train_set, dev_set = load_amazon_data(params.mode, params.input)
        elif params.dataset == 'stackexchange':
            train_set, dev_set = load_stackexchange_data(params.mode, params.input)
        return train_set, dev_set

if __name__ == "__main__":
    params = get_args()
    main(params)
