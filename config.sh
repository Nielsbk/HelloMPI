module load slurm/17.02.2
module load gcc/6.4.0
module load openmpi/gcc/64/4.0.2
module load julia/1.10.3
set -e
julia --project=. -e 'using Pkg; Pkg.instantiate()'
julia --project=. -e 'using MPIPreferences;use_system_binary(;force=true)'
julia --project=. -O3 --check-bounds=no -e 'using Pkg; Pkg.precompile()'

