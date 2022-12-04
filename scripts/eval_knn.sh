MODEL=gpt2-code-finetune

python -u run_clm.py \
  --model_name_or_path /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --dataset_name Fraser/python-lines \
  --output_dir ./outputs/${MODEL}/eval_knn-3000 \
  --dstore_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --do_eval \
  --eval_subset validation \
  --max_eval_samples 3000 \
  --per_device_eval_batch_size=1 \
  --knn \
  --knn_gpu False \
  --cache_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL}/python-lines-caches