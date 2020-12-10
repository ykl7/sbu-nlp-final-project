#!/bin/bash

HOME_DIR=/export/c08/ykumar/clarq-gen
FAIRSEQ=$HOME_DIR/fairseq/fairseq_cli
FDATA=$HOME_DIR/fdata
DATA_DIR=$HOME_DIR/data
MODELS=$HOME_DIR/models
ASKUBUNTU_DATA=$DATA_DIR'/askubuntu_unix_superuser'
CLARQ_DATA=$DATA_DIR'/clarq'
AMAZON_DATA=$DATA_DIR'/Home_and_Kitchen'

mosesdecoder=/home/pkoehn/moses

source activate clarq-gen

# number of layers in encoder/decoder for sweep
modelname=$1
dataset=$2
mode=$3
testfile=$4

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

testinput=$DATA/$testfile.src

python $FAIRSEQ/interactive.py $FDATA/$PREFIX-$mode --input $testinput --source-lang src --target-lang trg \
--path $MODELS/$modelname/checkpoint_best.pt --buffer-size 1024 --beam 5 --nbest 1 --batch-size 16 | grep -P '^H' | cut -f3- > \
$MODELS/$modelname/$testfile.questions

cat $MODELS/$modelname/$testfile.questions | $mosesdecoder/scripts/generic/multi-bleu-detok.perl \
 $DATA/$testfile.trg > $MODELS/$modelname/$testfile.questions.BLEU