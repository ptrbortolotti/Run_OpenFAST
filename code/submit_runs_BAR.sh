#!/bin/bash
#SBATCH --account=bar
#SBATCH --time=0-04:00:00
#SBATCH --job-name=bar00
#SBATCH --nodes=1
#SBATCH --ntasks=36
#SBATCH --mail-user pbortolo@nrel.gov
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --qos=high
#SBATCH --output=job_log.%j.out  # %j will be replaced with the job ID

module purge
module load conda
module load mkl/2019.1.144 cmake/3.12.3
module load gcc/8.2.0

source deactivate
conda activate wisdem-env

python run_OpenFAST_BAR00.py
