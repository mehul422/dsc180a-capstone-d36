#!/bin/bash
#SBATCH --job-name=mi300a_benchmark
#SBATCH --output=mi300a_bench_%j.log
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=02:00:00
#SBATCH --partition=compute

# Load ROCm and activate the Phase 2 environment
module load rocm
source $HOME/miniconda/bin/activate
conda activate mi300a_py310

# Lock to GPU 0 to prevent multi-process OOM
export HIP_VISIBLE_DEVICES=0
export ROCR_VISIBLE_DEVICES=0

echo "MI300A Node Ready. Run benchmarking scripts below."
