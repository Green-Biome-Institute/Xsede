#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1
#SBATCH --account=bio210016p
#SBATCH --partition=RM
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --time=10:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_blast.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_blast.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All

zcat GBI_Adensiflora_S3_L001_R1_001.fastq.gz | head -n 400000 >GBI_Adensiflora_S3_L001_R1_001_100K.fastq
zcat GBI_Apallida_S1_L001_R1_001.fastq.gz | head -n 400000 >GBI_Apallida_S1_L001_R1_001_100K.fastq
zcat GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz | head -n 400000 >GBI_Ecovalifolium_S2_L001_R1_001_100K.fastq
zcat GBI_Fstriata_S4_L001_R1_001.fastq.gz | head -n 400000 >GBI_Fstriata_S4_L001_R1_001_100K.fastq
zcat GBI_Mabbottii_S5_L001_R1_001.fastq.gz | head -n 400000 >GBI_Mabbottii_S5_L001_R1_001_100K.fastq


gzip *.fastq
