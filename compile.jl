using PackageCompiler

create_sysimage(:MPI,
  sysimage_path="MPI.so",
  precompile_execution_file=joinpath(@__DIR__,"warmup.jl"),
  include_transitive_dependencies = false,
 )

#create_sysimage(:HelloMPI,
#  sysimage_path="HelloMPI.so",
#  precompile_execution_file=joinpath(@__DIR__,"warmup.jl"))

