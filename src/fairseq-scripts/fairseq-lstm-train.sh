#!/bin/bash

HOME_DIR=/export/c08/ykumar/clarq-gen
FAIRSEQ=$HOME_DIR/fairseq/fairseq_cli
FDATA=$HOME_DIR/fdata
MODELS=$HOME_DIR/models
ASKUBUNTU_DATA=$DATA_DIR'/askubuntu_unix_superuser'
CLARQ_DATA=$DATA_DIR'/clarq'
AMAZON_DATA=$DATA_DIR'/Home_and_Kitchen'
EMBED_PATH=$HOME_DIR'/rao_embeddings'

source activate clarq-gen

embed=$1
attn=$2
dataset=$3
mode=$4

export CUDA_VISIBLE_DEVICES=`free-gpu`

if [ $dataset -eq 0 ]
then
    PREFIX='amazon'
    DATA=$AMAZON_DATA
    EMBED=$EMBED_PATH'/Home_and_Kitchen'
fi
if [ $dataset -eq 1 ]
then
    PREFIX='stackexchange'
    DATA=$ASKUBUNTU_DATA
    EMBED=$EMBED_PATH'/askubuntu_unix_superuser'
fi
if [ $dataset -eq 2 ]
then
    PREFIX='clarq'
    DATA=$CLARQ_DATA
fi

if [ $embed -eq 0 ]
then
    # if [ $attn -eq 0 ]
    # then
    #     # no embeddings, no attention
    # fi
    if [ $attn -eq 1 ]
    then
        # no embeddings, yes attention
        python $FAIRSEQ/train.py $FDATA/$PREFIX-$mode --lr-shrink 0.5 \
        --arch lstm --batch-size 64 --lr 0.0001 --optimizer adam --max-epoch 20 \
        -s src -t trg --sentence-avg --save-dir $MODELS/$PREFIX-$mode-no-embed-yes-attn-lstm \
        --decoder-embed-dim 200 --encoder-embed-dim 200 --encoder-layers 2 \
        --decoder-layers 2 --encoder-hidden-size 100 --decoder-hidden-size 100 --encoder-bidirectional \
        --skip-invalid-size-inputs-valid-test --max-sentences 64
    fi
fi
if [ $embed -eq 1 ]
then
    # if [ $attn -eq 0 ]
    # then
    #     # yes embeddings, no attention
    # fi
    if [ $attn -eq 1 ]
    then
        # yes embeddings, yes attention
        python $FAIRSEQ/train.py $FDATA/$PREFIX-$mode --lr-shrink 0.5 \
        --arch lstm --batch-size 64 --lr 0.0001 --optimizer adam --max-epoch 20 \
        -s src -t trg --sentence-avg --save-dir $MODELS/$PREFIX-$mode-yes-embed-yes-attn-lstm \
        --decoder-embed-dim 200 --encoder-embed-dim 200 --encoder-layers 2 \
        --decoder-layers 2 --encoder-hidden-size 100 --decoder-hidden-size 100 --encoder-bidirectional \
        --skip-invalid-size-inputs-valid-test --max-sentences 64 \
        --decoder-embed-path $EMBED/word_embeddings.p --encoder-embed-path $EMBED/word_embeddings.p
    fi
fi