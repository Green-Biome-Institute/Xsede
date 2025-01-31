#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1
#SBATCH --account=bio210016p
#SBATCH --partition=RM
#SBATCH --ntasks-per-node=128
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_blast3.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_blast3.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All

zcat rawdata/GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz | head -n 200000 >GBI_Ecovalifolium_S2_L001_R1_001_50K.fastq



module load BLAST/2.9.0


sed -n '1~4s/^@/>/p;2~4p' GBI_Ecovalifolium_S2_L001_R1_001_50K.fastq > GBI_Ecovalifolium_S2_L001_R1_001_50K.fasta

blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 128 -query GBI_Ecovalifolium_S2_L001_R1_001_50K.fasta -db /ocean/projects/bio210016p/shared/blast_databases/nt -out GBI_Ecovalifolium_S2_L001_R1_001_50K_blast.out

# 343 SUs