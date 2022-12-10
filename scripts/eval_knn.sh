MODEL=gpt2-code-finetune

python -u run_clm.py \
  --model_name_or_path /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --dataset_name Fraser/python-lines \
  --output_dir ./outputs/${MODEL}/eval_knn-10000 \
  --dstore_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --do_eval \
  --do_predict \
  --eval_subset validation \
  --per_device_eval_batch_size=32 \
  --max_eval_samples 10000 \
  --knn \
  --knn_gpu False \
  --cache_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL}/python-lines-caches