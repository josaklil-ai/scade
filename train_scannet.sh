#!/bin/bash

#SBATCH --job-name=scade_758
#SBATCH --output=scade_758.out
#SBATCH --error=scade_758.err
#SBATCH --partition=pasteur
#SBATCH --account=pasteur
#SBATCH --mem=32GB
#SBATCH --gres=gpu:4
#SBATCH --time=2-00:00:00

source activate scade
python run_scade_scannet.py train \
    --data_dir datasets/scannet/ \
    --scene_id scene0758_00 \
    --cimle_dir dump_1102_scene0758_sfmaligned_indv \
    --ckpt_dir logs_scannet \
    --expname scene758