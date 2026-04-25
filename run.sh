#!/bin/bash
#SBATCH -A bffp-delta-gpu
#SBATCH -p gpuA40x4-interactive
#SBATCH --ntasks-per-node=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:4
#SBATCH -t 00:10:00

# Run Jacobi (8192)
./jacobi 8192 8192

# Run Jacobi (16384)
./jacobi 16384 16384

# Run Pi
./pi 1000000