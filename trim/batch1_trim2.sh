#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=8
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_trim2.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_trim2.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All


module load cutadapt/2.10
module load FastQC
module load python/3.8.6


# CGTCAAGA CCAGTGTT Aden
# ATTAGCCG AGTCGCTT Apal
# GAGGCATT GCAATTCG Ecov
# ATAGGTCC TGGTACAG Fstr
# TCCACGTT GTCTGATC Mabb



/ocean/projects/bio210016p/shared/programs/TrimGalore-0.6.6/trim_galore --paired --illumina --fastqc --gzip --cores 8 GBI_Apallida_S1_L001_R1_001.fastq.gz GBI_Apallida_S1_L001_R2_001.fastq.gz

#66 SUs