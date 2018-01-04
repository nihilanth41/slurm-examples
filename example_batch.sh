#!/bin/bash 

#SBATCH --time=00:00:10
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o example_%j.out
#SBATCH --job-name=example_job

#module purge
#module load <modules _in order_>
