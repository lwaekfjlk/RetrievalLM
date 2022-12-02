MODEL=codet5-conala

python -u run_codegeneration.py  \
  --model_name_or_path /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --dataset_name neulab/conala \
  --per_device_eval_batch_size=4 \
  --output_dir ./outputs/${MODEL}/ \
  --do_eval \
  --eval_subset test \
  --dstore_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --val_max_target_length 32 \
  --num_beams 10 \
  --predict_with_generate \
  --retomaton