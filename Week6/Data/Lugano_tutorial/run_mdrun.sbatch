#!/bin/bash
#
#SBATCH --job-name=week6
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --mem=1GB
#SBATCH --output=Week6_mdrun.out

gmx_mpi mdrun -s /home/xz4366/comp-lab-class-2023/Week6/Inputs/topolA.tpr -nsteps 5000000 -plumed plumed.dat
