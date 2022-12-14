MODEL=gpt2-code-finetune

CUDA_VISIBLE_DEVICES=3 python -u ../run_clm.py \
  --model_name_or_path ../checkpoints/${MODEL} \
  --dataset_name Fraser/python-lines \
  --output_dir ./outputs/${MODEL}/eval_retomaton-10000 \
  --dstore_dir ../checkpoints/${MODEL} \
  --do_predict \
  --eval_subset validation \
  --per_device_eval_batch_size=32 \
  --max_eval_samples 10000 \
  --retomaton \
  --step_by_step \
  --knn_gpu False \
  --generate_length 30 \
  --cache_dir ../checkpoints/${MODEL}/python-lines-caches