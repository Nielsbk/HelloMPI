#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --output=out.o
#SBATCH --error=out.e

mpiexec -np 1 julia --project=. --check-bounds=no -O3 -J HelloMPI.so -e '
    using HelloMPI
    HelloMPI.greet()
'

