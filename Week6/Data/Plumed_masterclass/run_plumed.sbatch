#!/bin/bash
#
#SBATCH --job-name=week6
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --mem=1GB
#SBATCH --output=Week6_plumed.out

# run this command in one directory
cd A/
plumed driver --plumed ../plumed.dat --mf_xtc traj_comp.xtc
# and this in another one
cd ../B
plumed driver --plumed ../plumed.dat --mf_xtc traj_comp.xtc