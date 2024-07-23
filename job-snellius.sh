#!/bin/bash
#SBATCH --time=00:10:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --output=out.o
#SBATCH --error=out.e

source modules-snellius.sh

mpiexec -np 32 julia --project=. --check-bounds=no -O3 -J HelloMPI.so -e '
    using HelloMPI
    HelloMPI.greet()
'

