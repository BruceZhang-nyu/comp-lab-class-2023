#!/bin/bash
#
#SBATCH --job-name=week3
#SBATCH --output=Week3_md.out
#SBATCH --nodes=2
#SBATCH --cpus-per-task=2
#SBATCH --time=00:30:00
#SBATCH --mem=3GB
#SBATCH --gres=gpu:2
pmemd.cuda -O

gmx_mpi grompp -f ./Input/md.mdp -c ./Data/npt.gro -t ./Data/npt.cpt -p topol.top -o ./Data/md_0_1.tpr
cd ./Data/
gmx_mpi mdrun -v -deffnm md_0_1 -nb gpu