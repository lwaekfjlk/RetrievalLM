MODEL=gpt2-code-finetune

python -u ./run_clm.py \
  --model_name_or_path /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --dataset_name Fraser/python-lines \
  --output_dir ./outputs/${MODEL}/eval_knn \
  --dstore_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL} \
  --do_eval \
  --eval_subset train \
  --max_eval_samples 200000 \
  --save_knnlm_dstore \
  --build_index \
  --cache_dir /bos/tmp15/guanzhol/rlm/checkpoints/${MODEL}/python-lines-caches