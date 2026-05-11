#!/bin/bash
#SBATCH -A bffp-dtai-gh
#SBATCH -p ghx4
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --gpus-per-node=4
#SBATCH --mem=16g
#SBATCH -t 00:10:00

./a.out 8192 8192
./a.out 16384 16384
./pi 1000000