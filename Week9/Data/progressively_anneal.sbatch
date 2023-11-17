#!/bin/bash
#
#SBATCH --job-name=week9
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=4
#SBATCH --time=10:00:00
#SBATCH --mem=8GB
#SBATCH --output=Week9_pro_anneal.out

for temp in 1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475 0.45
do
  mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T${temp}.lmp -var id 1 -in ../Inputs/anneal_3d_binary.lmp
done