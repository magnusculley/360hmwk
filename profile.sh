#!/bin/bash
#SBATCH -A bffp-dtai-gh
#SBATCH -p ghx4
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --gpus-per-node=1
#SBATCH --mem=16g
#SBATCH -t 00:60:00

module load nvhpc

ncu --set full --launch-count 3 -o jacobi_8192 -f ./a.out 8192 8192

ncu --set full --launch-count 3 -o jacobi_16384 -f ./a.out 16384 16384

ncu --set full -o pi_profile -f ./pi 1000000