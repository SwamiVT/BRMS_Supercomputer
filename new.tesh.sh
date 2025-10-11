#!/bin/bash

#PBS -P ew49
#PBS -q normal
#PBS -l ncpus=4
#PBS -l mem=16gb
#PBS -l walltime=00:10:00

echo "Current Directory is $(pwd)"

module load R/4.5.0
module load intel-compiler-llvm/2025.2.0
module load intel-mkl/2025.2.0
module load intel-mpi/2021.16.0
module load intel-daal/2023.2.0

export R_LIBS=/scratch/ew49/vt0927/R/Library

Rscript /scratch/ew49/vt0927/Bayesian/hello.R
