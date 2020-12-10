#!/bin/bash

HOME_DIR=/export/c08/ykumar/clarq-gen
FAIRSEQ=$HOME_DIR/fairseq/fairseq_cli
DATA_DIR=$HOME_DIR/data
FDATA=$HOME_DIR/fdata

ASKUBUNTU_DATA=$DATA_DIR'/askubuntu_unix_superuser'
CLARQ_DATA=$DATA_DIR'/clarq'
AMAZON_DATA=$DATA_DIR'/Home_and_Kitchen'

dataset=$1
mode=$2

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

source activate clarq-gen

python $FAIRSEQ/preprocess.py --source-lang src --target-lang trg \
	--trainpref $DATA/$mode-train --validpref $DATA/$mode-dev \
    --destdir $FDATA/$PREFIX-$mode --joined-dictionary --thresholdsrc 10 \
    --thresholdtgt 10