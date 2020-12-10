# PREPROCESSING
# 0 = amazon data; concat = context+answer input
#sh fairseq-preprocess.sh 0 concat # Run Aug 5
#sh fairseq-preprocess.sh 0 context # Run Aug 5
## 1 = stackexchange data; concat = context+answer input
#sh fairseq-preprocess.sh 1 concat # Run Aug 5
#sh fairseq-preprocess.sh 1 context # Run Aug 5
## 1 = clarq data; concat = context+answer input
# sh fairseq-preprocess.sh 2 concat # Run Oct 8
# sh fairseq-preprocess.sh 2 context # Run Oct 8
#
## TRAINING
#
## LSTM w/ ATTENTION
## w/ embeddings
# 
##amazon
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-amazon-concat-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-amazon-concat-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 1 1 0 concat # Run Oct 8
# 
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-amazon-context-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-amazon-context-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 1 1 0 context # Run Oct 8
# 
# stackexchange
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-concat-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-concat-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 1 1 1 concat # Run Oct 8
# 
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-context-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-context-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 1 1 1 context # Run Oct 8
#
## LSTM w/ ATTENTION
## w/o embeddings
#
## amazon
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-amazon-concat-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-amazon-concat-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 0 1 0 concat # Run Aug 5
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-amazon-context-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-amazon-context-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 0 1 0 context # Run Aug 5
#
## stackexchange
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-concat-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-concat-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 0 1 1 concat # Run Aug 5
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-context-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-context-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 0 1 1 context # Run Aug 5
# 
## clarq
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-concat-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-concat-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 0 1 2 concat # Ran Oct 9

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-context-lstm-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-context-lstm-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-lstm-train.sh 0 1 2 context # Ran Oct 9
#
## TRANSFORMER
#
## amazon
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-amazon-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-amazon-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 2 0 context # Run Aug 6
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-amazon-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-amazon-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 4 0 context # Run Aug 6
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-amazon-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-amazon-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 2 0 concat # Run Aug 6
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-amazon-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-amazon-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 4 0 concat # Run Aug 6
#
## stackexchange
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 2 1 context # Run Aug 6
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 4 1 context # Run Aug 6
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 2 1 concat # Run Aug 6
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 4 1 concat # Run Aug 6
#
## clarq
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 2 2 context # Run Oct 9

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 4 2 context # Run Oct 9

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 2 2 concat # Run Oct 9

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-transformer-train.sh 4 2 concat # Run Oct 9

# BART

# stackexchange

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-train.sh 6 1 concat # Run Oct 14

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-train.sh 6 1 context # Run Oct 14

# clarq

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-train.sh 6 2 concat # Run Oct 14

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-train.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-train.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-train.sh 6 2 context # Run Oct 14

# BART finetune - ERROR + FIX

# stackexchange

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-finetune.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-finetune.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-finetune.sh 6 1 concat

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-finetune.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-finetune.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-finetune.sh 6 1 context

# clarq

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-finetune.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-finetune.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-finetune.sh 6 2 concat

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-finetune.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-finetune.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-bart-finetune.sh 6 2 context

# GPT-2 finetuning - Memory issues

# stackexchange

# qsub stackexchange-concat-gpt2-finetune.sh

# qsub stackexchange-context-gpt2-finetune.sh

# clarq

# qsub clarq-concat-gpt2-finetune.sh # Run Oct 15

# qsub clarq-context-gpt2-finetune.sh 

# TESTING

# stackexchange

# LSTM
# w/ embeddings

# concat model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-concat-lstm-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-concat-lstm-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-yes-embed-yes-attn-lstm 1 \
# concat concat-test

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-concat-lstm-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-concat-lstm-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-yes-embed-yes-attn-lstm 1 \
# concat context-test

# context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-context-lstm-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-context-lstm-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-yes-embed-yes-attn-lstm 1 \
# context concat-test # Run Oct 26

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-context-lstm-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/yes-embed-yes-attn-stackexchange-context-lstm-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-yes-embed-yes-attn-lstm 1 \
# context context-test # Run Oct 26

# LSTM w/ ATTENTION
# w/o embeddings

# concat model tests
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-concat-lstm-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-concat-lstm-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-no-embed-yes-attn-lstm 1 \
# concat concat-test
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-concat-lstm-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-concat-lstm-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-no-embed-yes-attn-lstm 1 \
# concat context-test
#
## context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-context-lstm-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-context-lstm-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-no-embed-yes-attn-lstm 1 \
# context concat-test

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-context-lstm-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-stackexchange-context-lstm-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-no-embed-yes-attn-lstm 1 \
# context context-test # Run Oct 26
#
## TRANSFORMER
#
## 2 layer
## concat model tests
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-concat-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-concat-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-2-layer-transformer 1 \
# concat concat-test
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-concat-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-concat-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-2-layer-transformer 1 \
# concat context-test
#
## context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-context-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-context-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-2-layer-transformer 1 \
# context concat-test

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-context-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-stackexchange-context-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-2-layer-transformer 1 \
# context context-test # Run Oct 26
#
## 4 layer
## concat model tests
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-concat-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-concat-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-4-layer-transformer 1 \
# concat concat-test # Run Sep 3
#
#qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-concat-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-concat-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-4-layer-transformer 1 \
# concat context-test # Run Sep 3
#
## context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-context-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-context-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-4-layer-transformer 1 \
# context concat-test # Run Sep 3
#
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-context-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-stackexchange-context-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-4-layer-transformer 1 \
# context context-test # Run Oct 26

# BART

## concat model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-6-layer-bart-base 1 \
# concat concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-concat-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-concat-6-layer-bart-base 1 \
# concat context-test # Run Oct 21
#
## context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-6-layer-bart-base 1 \
# context concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-stackexchange-context-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh stackexchange-context-6-layer-bart-base 1 \
# context context-test # Run Oct 26

# clarq

# LSTM w/ ATTENTION
# w/o embeddings

# concat model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-concat-lstm-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-concat-lstm-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-no-embed-yes-attn-lstm 2 \
# concat concat-test # Run Oct 21 - RETRY BLEU 0

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-concat-lstm-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-concat-lstm-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-no-embed-yes-attn-lstm 2 \
# concat context-test # Run Oct 21

# context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-context-lstm-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-context-lstm-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-no-embed-yes-attn-lstm 2 \
# context concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=4g,ram_free=4g' \
# -e /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-context-lstm-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/no-embed-yes-attn-clarq-context-lstm-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-no-embed-yes-attn-lstm 2 \
# context context-test # Run Oct 26
#
## TRANSFORMER
#
## 2 layer
## concat model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-concat-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-concat-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-2-layer-transformer 2 \
# concat concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-concat-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-concat-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-2-layer-transformer 2 \
# concat context-test # Run Oct 21
#
## context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-context-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-context-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-2-layer-transformer 2 \
# context concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-context-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/2-layer-transformer-clarq-context-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-2-layer-transformer 2 \
# context context-test # Run Oct 26
#
## 4 layer
## concat model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-concat-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-concat-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-4-layer-transformer 2 \
# concat concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-concat-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-concat-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-4-layer-transformer 2 \
# concat context-test
#
## context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-context-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-context-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-4-layer-transformer 2 \
# context concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-context-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/4-layer-transformer-clarq-context-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-4-layer-transformer 2 \
# context context-test # Run Oct 26

## BART

## concat model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-6-layer-bart-base 2 \
# concat concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-concat-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-concat-6-layer-bart-base 2 \
# concat context-test # Run Oct 21
#
## context model tests
# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-inference-on-concat.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-inference-on-concat.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-6-layer-bart-base 2 \
# context concat-test # Run Oct 21

# qsub -S /bin/bash -q g.q -l 'gpu=1,hostname=c*,mem_free=8g,ram_free=8g' \
# -e /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-inference-on-context.err \
# -o /export/c08/ykumar/clarq-gen/qsub/bart-clarq-context-inference-on-context.out \
# /export/c08/ykumar/clarq-gen/src/clsp-scripts/fairseq-inference.sh clarq-context-6-layer-bart-base 2 \
# context context-test # Run Oct 26