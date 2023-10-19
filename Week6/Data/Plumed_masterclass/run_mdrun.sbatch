#!/bin/bash
#
#SBATCH --job-name=week6
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --mem=1GB
#SBATCH --output=Week6_mdrun.out

# run this command in one directory
cd A/
gmx_mpi mdrun -s ../../../Inputs/topolA.tpr -nsteps 10000000
# and this in another one
cd ../B
gmx_mpi mdrun -s ../../../Inputs/topolB.tpr -nsteps 10000000