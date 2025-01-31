#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=64
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_blast2.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_blast2.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All

zcat rawdata/GBI_Apallida_S1_L001_R1_001.fastq.gz | head -n 200000 >GBI_Apallida_S1_L001_R1_001_50K.fastq



module load BLAST/2.9.0


sed -n '1~4s/^@/>/p;2~4p' GBI_Apallida_S1_L001_R1_001_50K.fastq > GBI_Apallida_S1_L001_R1_001_50K.fasta

blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 64 -query GBI_Apallida_S1_L001_R1_001_50K.fasta -db /ocean/projects/bio210016p/shared/blast_databases/nt -out GBI_Apallida_S1_L001_R1_001_50K_blast.out


#failed timed out 2304 SUs

#333 SUs
