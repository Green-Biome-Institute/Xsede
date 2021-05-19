#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=24
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_jellyfish1.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_jellyfish1.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All

GBI_Adensiflora_S3_L001_R1_001.fastq.gz 
GBI_Apallida_S1_L001_R1_001.fastq.gz
GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz
GBI_Fstriata_S4_L001_R1_001.fastq.gz
GBI_Mabbottii_S5_L001_R1_001.fastq.gz




