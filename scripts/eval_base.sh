MODEL=gpt2-code-finetune

python -u ./run_clm.py \
  --model_name_or_path /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --dataset_name Fraser/python-lines \
  --output_dir ./outputs/${MODEL}/eval_base \
  --do_eval \
  --eval_subset validation \
  --cache_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL}/python-lines-caches