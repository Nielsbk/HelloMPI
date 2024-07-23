#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --output=out.o
#SBATCH --error=out.e

julia --project=. -O3 --check-bounds=no --color=yes -e 'using Pkg; Pkg.instantiate()'
julia --project=. -O3 --check-bounds=no --color=yes compile.jl

