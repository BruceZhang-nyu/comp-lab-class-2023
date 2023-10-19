#!/bin/bash
#
#SBATCH --job-name=week5
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --mem=1GB
#SBATCH --output=Week5_T440.out

module purge
module load gromacs/openmpi/intel/2018.3

gmx_mpi grompp -f ./Inputs/adp_T440.mdp -c ./Data/adp.gro -p ./Data/adp.top -o ./Data/T440/adp_md.tpr 
gmx_mpi mdrun -v -deffnm ./Data/T440/adp_md
