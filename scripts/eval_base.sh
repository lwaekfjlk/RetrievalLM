MODEL=codet5-small

python -u run_codegeneration.py  \
  --model_name_or_path /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --dataset_name neulab/conala \
  --per_device_eval_batch_size=4 \
  --output_dir ./outputs/${MODEL}/eval_base \
  --do_eval \
  --val_max_target_length 32 \
  --num_beams 10 \
  --predict_with_generate