#!/bin/bash
#SBATCH -A bffp-dtai
#SBATCH -p ghx4
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:4
#SBATCH -t 00:10:00

./jacobi 8192 8192

./jacobi 16384 16384

./pi 1000000