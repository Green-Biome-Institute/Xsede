#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=24
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_blast.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_blast.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All

# zcat GBI_Adensiflora_S3_L001_R1_001.fastq.gz | head -n 400000 >GBI_Adensiflora_S3_L001_R1_001_100K.fastq
# zcat GBI_Apallida_S1_L001_R1_001.fastq.gz | head -n 400000 >GBI_Apallida_S1_L001_R1_001_100K.fastq
# zcat GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz | head -n 400000 >GBI_Ecovalifolium_S2_L001_R1_001_100K.fastq
# zcat GBI_Fstriata_S4_L001_R1_001.fastq.gz | head -n 400000 >GBI_Fstriata_S4_L001_R1_001_100K.fastq
# zcat GBI_Mabbottii_S5_L001_R1_001.fastq.gz | head -n 400000 >GBI_Mabbottii_S5_L001_R1_001_100K.fastq
# 
# 
# gzip *.fastq

cd /ocean/projects/bio210016p/shared/blast_databases/

module load BLAST/2.9.0
# update_blastdb.pl --decompress nr [*]
update_blastdb.pl --decompress nt [*]

# srun /global/home/users/makman/blast/ncbi-blast-2.10.0+/bin/blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query Plant_HO2_subsample.fasta -db /global/scratch/makman/blast_database/nt_database/nt -out Plant_HO2_subsample_num.out