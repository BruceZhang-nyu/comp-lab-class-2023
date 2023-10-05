#!/bin/bash
#
#SBATCH --job-name=week3
#SBATCH --nodes=5
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=02:00:00
#SBATCH --mem=8GB
#SBATCH --output=Week3_npt_equi.out

gmx_mpi grompp -f ./Input/npt.mdp -c ./Data/nvt.gro -r ./Data/nvt.gro -t ./Data/nvt.cpt -p topol.top -o ./Data/npt.tpr
cd ./Data/
gmx_mpi mdrun -deffnm npt