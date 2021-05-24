#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=24
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_trim1.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_trim1.err
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


zcat GBI_Adensiflora_S3_L001_R1_001.fastq.gz GBI_Adensiflora_S9_L001_R1_001.fastq.gz > GBI_Adensiflora_S3_S9_L001_R1_001.fastq
zcat GBI_Adensiflora_S3_L001_R2_001.fastq.gz GBI_Adensiflora_S9_L001_R2_001.fastq.gz > GBI_Adensiflora_S3_S9_L001_R2_001.fastq

gzip GBI_Adensiflora_S3_S9_L001_R1_001.fastq
gzip GBI_Adensiflora_S3_S9_L001_R2_001.fastq

/ocean/projects/bio210016p/shared/programs/TrimGalore-0.6.6/trim_galore --paired --illumina --fastqc --gzip --cores 24 GBI_Adensiflora_S3_S9_L001_R1_001.fastq.gz GBI_Adensiflora_S3_S9_L001_R2_001.fastq.gz 

#335 SUs