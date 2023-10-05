#!/bin/bash
#
#SBATCH --job-name=week3
#SBATCH --nodes=10
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=02:00:00
#SBATCH --mem=8GB
#SBATCH --output=Week3_nvt_equi.out

gmx_mpi grompp -f ./Input/nvt.mdp -c ./Data/energymin.gro -r ./Data/energymin.gro -p topol.top -o ./Data/nvt.tpr
cd ./Data/
gmx_mpi mdrun -deffnm nvt