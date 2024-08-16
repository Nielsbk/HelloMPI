# HelloMPI

Minimal Julia MPI application for testing purposes.

Usef for:
- Quickly check MPI when you move to a new system
- Check how mpi ranks are mapped to CPU cores
- Learn how to configure use MPI on different systems
- Chech the compilation and usage of a systemimage when using MPI

## Usage

Taking das6 as example https://www.cs.vu.nl/das/  

```batch
$ das6/configure.sh
$ sbatch das6/job.sh
```

With system image
```batch
$ das6/configure.sh
$ sbatch das6/compile.sh
$ sbatch das6/job-with-sysimage.sh
```

