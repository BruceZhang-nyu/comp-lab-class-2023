#!/bin/bash
#
#SBATCH --job-name=week3
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --time=20:00:00
#SBATCH --mem=8GB
#SBATCH --output=Week3_md.out

gmx_mpi grompp -f ./Input/md.mdp -c ./Data/npt.gro -t ./Data/npt.cpt -p topol.top -o ./Data/md_0_1.tpr
cd ./Data/
gmx_mpi mdrun -v -deffnm md_0_1