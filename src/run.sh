# # extract posts
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/data/clarq/context-test.src /home/yklal95/clarq-gen-baselines/data/mturk-raw/clarq-posts.txt 150
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/data/askubuntu_unix_superuser/context-test.src /home/yklal95/clarq-gen-baselines/data/mturk-raw/stackexchange-posts.txt 150

# # extract clarification questions
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/clarq-context-2-layer-transformer/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.txt 50
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/clarq-context-4-layer-transformer/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.txt 50
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/clarq-context-6-layer-bart-base/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-base-clarq-output.txt 50
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/clarq-context-no-embed-yes-attn-lstm/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-clarq-output.txt 50

# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/stackexchange-context-2-layer-transformer/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.txt 50
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/stackexchange-context-4-layer-transformer/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.txt 50
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/stackexchange-context-6-layer-bart-base/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-base-stackexchange-output.txt 50
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/stackexchange-context-no-embed-yes-attn-lstm/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.txt 50
# sh create-mturk-raw-files.sh single /home/yklal95/clarq-gen-baselines/models/stackexchange-context-yes-embed-yes-attn-lstm/context-test.questions /home/yklal95/clarq-gen-baselines/data/mturk-raw/yes-embed-lstm-stackexchange-output.txt 50

# # extract post and clarification questions
# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/clarq-context-2-layer-transformer/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/clarq/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.posts 500

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/clarq-context-4-layer-transformer/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/clarq/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.posts 500

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/clarq-context-no-embed-yes-attn-lstm/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/clarq/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.posts 500

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/clarq-context-6-layer-bart-base/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/clarq/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.posts 500


# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/stackexchange-context-2-layer-transformer/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/askubuntu_unix_superuser/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.posts 900

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/stackexchange-context-4-layer-transformer/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/askubuntu_unix_superuser/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.posts 900

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/stackexchange-context-no-embed-yes-attn-lstm/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/askubuntu_unix_superuser/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.posts 900

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/stackexchange-context-yes-embed-yes-attn-lstm/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/askubuntu_unix_superuser/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.posts 900

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen-baselines/models/stackexchange-context-6-layer-bart-base/context-test.questions \
#  /home/yklal95/clarq-gen-baselines/data/askubuntu_unix_superuser/context-test.src \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.questions \
#  /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.posts 900

# sh create-mturk-raw-files.sh pair \
#  /home/yklal95/clarq-gen/models/stackexchange-context-finetuned-gpt2/context-test.questions \
#  /home/yklal95/clarq-gen/data/askubuntu_unix_superuser/context-test.src \
#  /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.questions \
#  /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.posts 900

# need clarq task
# python create_mturk_hit_inputs.py --task need-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/clarq-posts.txt \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/need_clarq_task_clarq.csv
# python create_mturk_hit_inputs.py --task need-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/stackexchange-posts.txt \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/need_clarq_task_stackexchange.csv

# information needs task
# python create_mturk_hit_inputs.py --task info-needs --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/clarq-posts.txt \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/info_needs_task_clarq.csv
# python create_mturk_hit_inputs.py --task info-needs --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/stackexchange-posts.txt \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/info_needs_task_stackexchange.csv

# is output clarq task
# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_2_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_4_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_bart_clarq.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_lstm_clarq.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_2_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_4_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_bart_stackexchange.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_no_embed_lstm_stackexchange.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/is_clarification_embed_lstm_stackexchange.csv

# python create_mturk_hit_inputs.py --task is-clarq --input-post-file /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen/data/mturk-processed/is_clarification_finetuned_gpt2_stackexchange.csv

# more clarq task
# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_2_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_4_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_bart_clarq.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_lstm_clarq.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_2_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_4_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_bart_stackexchange.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_no_embed_lstm_stackexchange.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/more_clarification_embed_lstm_stackexchange.csv

# python create_mturk_hit_inputs.py --task more-clarq --input-post-file /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen/data/mturk-processed/more_clarification_finetuned_gpt2_stackexchange.csv

# unk token significance task
# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_2_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_4_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_bart_clarq.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_lstm_clarq.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_2_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_4_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_bart_stackexchange.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_no_embed_lstm_stackexchange.csv

# python create_mturk_hit_inputs.py --task unk-significance --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/unk_token_significance_embed_lstm_stackexchange.csv

# fluency adequacy task
# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_2_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_4_layer_transformer_clarq.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_bart_clarq.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/lstm-clarq-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_lstm_clarq.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/2-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_2_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/4-layer-transformer-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_4_layer_transformer_stackexchange.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/bart-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_bart_stackexchange.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/no-embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_no_embed_lstm_stackexchange.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen-baselines/data/mturk-raw/embed-lstm-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen-baselines/data/mturk-processed/fluency_adequacy_embed_lstm_stackexchange.csv

# python create_mturk_hit_inputs.py --task fluency-adequacy --input-post-file /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.posts \
#  --input-generated-file /home/yklal95/clarq-gen/data/mturk-raw/finetuned-gpt2-stackexchange-output.questions \
#  --task-input-file /home/yklal95/clarq-gen/data/mturk-processed/fluency_adequacy_finetuned_gpt2_stackexchange.csv

# python create_data_for_ved.py --src-file /home/yklal95/clarq-gen/data/clarq/context-train.src \
#  --trg-file /home/yklal95/clarq-gen/data/clarq/context-train.trg \
#  --split train --output-dir /home/yklal95/clarq-gen/tf-var-attention/data/clarq

# python create_data_for_ved.py --src-file /home/yklal95/clarq-gen/data/clarq/context-dev.src \
#  --trg-file /home/yklal95/clarq-gen/data/clarq/context-dev.trg \
#  --split dev --output-dir /home/yklal95/clarq-gen/tf-var-attention/data/clarq

# python create_data_for_ved.py --src-file /home/yklal95/clarq-gen/data/clarq/context-test.src \
#  --trg-file /home/yklal95/clarq-gen/data/clarq/context-test.trg \
#  --split test --output-dir /home/yklal95/clarq-gen/tf-var-attention/data/clarq

# python create_data_for_ved.py --src-file /home/yklal95/clarq-gen/data/askubuntu_unix_superuser/context-train.src \
#  --trg-file /home/yklal95/clarq-gen/data/askubuntu_unix_superuser/context-train.trg \
#  --split train --output-dir /home/yklal95/clarq-gen/tf-var-attention/data/stackexchange

# python create_data_for_ved.py --src-file /home/yklal95/clarq-gen/data/askubuntu_unix_superuser/context-dev.src \
#  --trg-file /home/yklal95/clarq-gen/data/askubuntu_unix_superuser/context-dev.trg \
#  --split dev --output-dir /home/yklal95/clarq-gen/tf-var-attention/data/stackexchange

# python create_data_for_ved.py --src-file /home/yklal95/clarq-gen/data/askubuntu_unix_superuser/context-test.src \
#  --trg-file /home/yklal95/clarq-gen/data/askubuntu_unix_superuser/context-test.trg \
#  --split test --output-dir /home/yklal95/clarq-gen/tf-var-attention/data/stackexchange