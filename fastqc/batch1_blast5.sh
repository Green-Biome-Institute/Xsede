#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1
#SBATCH --account=bio210016p
#SBATCH --partition=RM
#SBATCH --ntasks-per-node=128
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_blast5.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_blast5.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All

# zcat GBI_Adensiflora_S3_L001_R1_001.fastq.gz | head -n 400000 >GBI_Adensiflora_S3_L001_R1_001_100K.fastq
# zcat GBI_Apallida_S1_L001_R1_001.fastq.gz | head -n 400000 >GBI_Apallida_S1_L001_R1_001_100K.fastq
# zcat GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz | head -n 400000 >GBI_Ecovalifolium_S2_L001_R1_001_100K.fastq
# zcat GBI_Fstriata_S4_L001_R1_001.fastq.gz | head -n 400000 >GBI_Fstriata_S4_L001_R1_001_100K.fastq
# zcat GBI_Mabbottii_S5_L001_R1_001.fastq.gz | head -n 400000 >GBI_Mabbottii_S5_L001_R1_001_100K.fastq
# 
# 


# cd /ocean/projects/bio210016p/shared/blast_databases/

module load BLAST/2.9.0
# update_blastdb.pl --decompress nr [*] #58 SUs with 24 ntasks-per-node
# update_blastdb.pl --decompress nt [*] #39 SUs with 24 ntasks-per-node

cd /ocean/projects/bio210016p/shared/novaseq/batch1/

sed -n '1~4s/^@/>/p;2~4p' GBI_Mabbottii_S5_L001_R1_001_100K.fastq > GBI_Mabbottii_S5_L001_R1_001_100K.fasta

# blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 24 -query GBI_Adensiflora_S3_L001_R1_001_100K.fasta -db /ocean/projects/bio210016p/shared/blast_databases/nt -out GBI_Adensiflora_S3_L001_R1_001_100K_blast.out
# blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 48 -query GBI_Apallida_S1_L001_R1_001_100K.fastq -db /ocean/projects/bio210016p/shared/blast_databases/nt -out GBI_Apallida_S1_L001_R1_001_100K_blast.out
# blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 12 -query GBI_Ecovalifolium_S2_L001_R1_001_100K.fastq -db /ocean/projects/bio210016p/shared/blast_databases/nt -out GBI_Ecovalifolium_S2_L001_R1_001_100K_blast.out
# blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 64 -query GBI_Fstriata_S4_L001_R1_001_100K.fastq -db /ocean/projects/bio210016p/shared/blast_databases/nt -out GBI_Fstriata_S4_L001_R1_001_100K_blast.out
blastn -task blastn -num_descriptions 1 -num_alignments 1 -num_threads 128 -query GBI_Mabbottii_S5_L001_R1_001_100K.fasta -db /ocean/projects/bio210016p/shared/blast_databases/nt -out GBI_Mabbottii_S5_L001_R1_001_100K_blast.out
