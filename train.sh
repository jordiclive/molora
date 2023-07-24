#!/usr/bin/env bash

conda deactivate
module purge
ml use $OTHERSTAGES
module load Stages/2023 GCC/11.3.0  OpenMPI/4.1.4
module load CUDA/11.7


# Environment Configuration
source /p/home/jusers/clive1/juwels/clive1/miniconda3/bin/activate jordan_lora
export WANDB_API_KEY="d8216641d549f9bb3d0c5074baa39e15dfd55030"
export HUGGING_FACE_HUB_TOKEN="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"
export PYTHONPATH="/p/home/jusers/clive1/juwels/clive1/scaled-rope:$PYTHONPATH"
export TRANSFORMERS_CACHE="/p/home/jusers/clive1/juwels/clive1/transformers_cache"
export HF_DATASETS_CACHE="/p/home/jusers/clive1/juwels/clive1/transformers_cache"
export HF_HOME="/p/home/jusers/clive1/juwels/clive1/transformers_cache"
export PATH="/p/software/juwelsbooster/stages/2023/software/OpenMPI/4.1.4-GCC-11.3.0/bin:$PATH"

cd /p/home/jusers/clive1/juwels/clive1/molora

python flashtrainer.py --config /p/project/ccstdl/clive1/molora/config-mathphysics.json