#!/bin/bash
#
#SBATCH --job-name=week3
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=02:00:00
#SBATCH --mem=8GB
#SBATCH --output=Week3.out

cd Data/
gmx_mpi mdrun -v -deffnm energymin