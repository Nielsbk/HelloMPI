#!/bin/bash
#SBATCH --exclusive
#SBATCH --time=00:10:00
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=6
#SBATCH --output=das6-out.o
#SBATCH --error=das6-out.e

source das6/modules.sh
export OMP_NUM_THREADS=1
export NUM_THREADS=1
MPIFLAGS="--map-by node:span --rank-by core"
JULIAFLAGS="-O3 --check-bounds=no"
mpiexec -np 24 $MPIFLAGS julia $JULIAFLAGS --project=. -e '
    using HelloMPI
    HelloMPI.greet()
'
