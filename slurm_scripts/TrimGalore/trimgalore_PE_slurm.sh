#!/bin/bash
#SBATCH --ntasks=14
#SBATCH --mem=10000MB
#SBATCH --mem-per-cpu=10000MB
#SBATCH --time=10:00:00
#SBATCH --partition=cmb
cd "$SLURM_SUBMIT_DIR"

trim_galore --fastqc --paired ../FASTQ-DUMP/${IN}_1.fastq ../FASTQ-DUMP/${IN}_2.fastq
