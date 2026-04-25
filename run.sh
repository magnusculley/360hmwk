#!/bin/bash
#SBATCH -A bffp-delta-gpu
#SBATCH -p gpuA40x4
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:4
#SBATCH -t 00:10:00

./a.out 8192 8192
./a.out 16384 16384
./pi 1000000