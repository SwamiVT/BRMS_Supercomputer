#!/bin/bash

#PBS -P ew49
#PBS -q normal
#PBS -l ncpus=4
#PBS -l mem=16gb
#PBS -l walltime=00:10:00

echo "Current Directory is $(pwd)"
echo "Path is $PATH"

module load R/4.5.0
module load intel-compiler-llvm/2025.2.0
module load intel-mkl/2025.2.0
module load intel-mpi/2021.16.0
module load intel-daal/2023.2.0

echo "Contents of the current directory is: $(ls)"
echo "End of directory listing."



~/bin/quarto render /scratch/ew49/vt0927/Bayesian/QuartoTest2.qmd --to html 
