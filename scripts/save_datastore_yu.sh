MODEL=gpt2-code-finetune

CUDA_VISIBLE_DEVICES=0 python -u ../run_clm.py \
  --model_name_or_path ../checkpoints/${MODEL} \
  --dataset_name Fraser/python-lines \
  --output_dir ./outputs/${MODEL}/eval_knn \
  --dstore_dir ../checkpoints/${MODEL} \
  --do_eval \
  --eval_subset train \
  --save_knnlm_dstore \
  --build_index \
  --cache_dir ../checkpoints/${MODEL}/python-lines-caches