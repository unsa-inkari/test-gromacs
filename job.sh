#!/bin/bash
#SBATCH -J test-gromacs
#SBATCH --time=720:00:00
#SBATCH -N 2
#SBATCH --tasks-per-node=24
#SBATCH --mem 512MB
#SBATCH -e output-%j.log
#SBATCH -o output-%j.out

# Eliminando los modulos anteriormnente cargados
module purge

# Cargando los modulos necesarios
module load gromacs/2020.6

mpirun gmx_mpi mdrun -s benchMEM.tpr
