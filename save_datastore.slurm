#!/bin/bash

#SBATCH --job-name=save_datastore
#SBATCH --mail-user=$USER
#SBATCH -t 3-0:00
#SBATCH --ntasks=1
#SBATCH --output=logs/save_datastore.out
#SBATCH --error=logs/save_datastore.err
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --mem=32000
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1

echo "SLURM_JOBID: " $SLURM_JOBID
echo "SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
echo "SLURM_ARRAY_JOB_ID: " $SLURM_ARRAY_JOB_ID

MODEL=neulab/gpt2-finetuned-wikitext103

python -u run_clm.py \
  --model_name_or_path ${MODEL} \
  --dataset_name wikitext --dataset_config_name wikitext-103-raw-v1 \
  --do_eval --eval_subset validation \
  --output_dir checkpoints/${MODEL} \
  --dstore_dir checkpoints/${MODEL} \
  --save_knnlm_dstore \
  --build_index