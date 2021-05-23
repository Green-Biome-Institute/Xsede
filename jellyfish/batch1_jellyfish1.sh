#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=64
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_jellyfish1.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_jellyfish1.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All




GBI_Adensiflora_S3_S9_L001_R1_001_trimmed.fastq.gz 
GBI_Adensiflora_S3_S9_L001_R2_001_trimmed.fastq.gz 

/ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 64 -C -m 20 -s 5G -o 20mer_out -F 2 <(zcat path/to/cleaned/file/1.fq.gz) <(zcat path/to/cleaned/file/2.fq.gz)