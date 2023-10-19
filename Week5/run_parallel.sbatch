#!/bin/bash
#
#SBATCH --job-name=week5
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=3
#SBATCH --time=1:00:00
#SBATCH --mem=1GB
#SBATCH --output=Week5_parallel_tempering.out

module purge
module load gromacs/openmpi/intel/2018.3

mpirun -np 3 gmx_mpi mdrun -s adp -multidir T300/ T363 T440/ -deffnm adp_exchange3temps -replex 50
