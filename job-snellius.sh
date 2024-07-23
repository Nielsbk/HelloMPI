#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --output=out.o
#SBATCH --error=out.e

source modules-snellius.sh

echo  "+++ No sysimage +++"

julia --project=. --check-bounds=no -O3 -e '
using MPI
MPI.Init()
MPI.versioninfo()
run(`$(MPI.mpiexec()) -V`)
run(`which $(MPI.mpiexec())`)
'

echo  "+++ with sysimage +++"

julia --project=. --check-bounds=no -O3 -J HelloMPI.so -e '
using MPI
MPI.Init()
MPI.versioninfo()
run(`$(MPI.mpiexec()) -V`)
run(`which $(MPI.mpiexec())`)
'
#mpiexec -V
#which mpiexec
#
#mpiexec -np 1 julia --project=. --check-bounds=no -O3 -e '
#    using MPI
#    MPI.versioninfo()
#    using HelloMPI
#    HelloMPI.greet()
#'
#
#mpiexec -np 1 julia --project=. --check-bounds=no -O3 -J HelloMPI.so -e '
#    using MPI
#    MPI.versioninfo()
#    using HelloMPI
#    HelloMPI.greet()
#'

