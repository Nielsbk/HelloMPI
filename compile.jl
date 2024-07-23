using PackageCompiler

create_sysimage(:HelloMPI,
  sysimage_path="HelloMPI.so",
  precompile_execution_file=joinpath(@__DIR__,"warmup.jl"))

