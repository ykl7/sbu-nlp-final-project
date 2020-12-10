#!/bin/bash

HOME_DIR=/export/c08/ykumar/clarq-gen
FAIRSEQ=$HOME_DIR/fairseq/fairseq_cli
FDATA=$HOME_DIR/fdata
MODELS=$HOME_DIR/models
ASKUBUNTU_DATA=$DATA_DIR'/askubuntu_unix_superuser'
CLARQ_DATA=$DATA_DIR'/clarq'
AMAZON_DATA=$DATA_DIR'/Home_and_Kitchen'

source activate clarq-gen

# number of layers in encoder/decoder for sweep
layers=$1
dataset=$2
mode=$3

export CUDA_VISIBLE_DEVICES=`free-gpu`

if [ $dataset -eq 0 ]
then
    PREFIX='amazon'
    DATA=$AMAZON_DATA
fi
if [ $dataset -eq 1 ]
then
    PREFIX='stackexchange'
    DATA=$ASKUBUNTU_DATA
fi
if [ $dataset -eq 2 ]
then
    PREFIX='clarq'
    DATA=$CLARQ_DATA
fi

python $FAIRSEQ/train.py $FDATA/$PREFIX-$mode --arch transformer_vaswani_wmt_en_de_big \
--lr 0.0001 --clip-norm 1.0 --max-tokens 1500 --share-all-embeddings \
-s src -t trg --optimizer adam --warmup-updates 4000 --warmup-init-lr '1e-07' \
--adam-betas '(0.9, 0.98)' --lr-scheduler inverse_sqrt --max-epoch 10 --max-update 100000 \
--encoder-layers $layers --decoder-layers $layers --update-freq 4 \
--criterion label_smoothed_cross_entropy --label-smoothing 0.1 --min-lr '1e-08' \
--skip-invalid-size-inputs-valid-test --save-dir $MODELS/$PREFIX-$mode-$layers-layer-transformer