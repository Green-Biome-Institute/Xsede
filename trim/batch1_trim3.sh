#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=4
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_trim3.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_trim3.err
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


# cutadapt -a CGTCAAGA -A CCAGTGTT -o GBI_Adensiflora_S3_L001_R1_001_trimmed.fastq.gz  -p GBI_Adensiflora_S3_L001_R2_001_trimmed.fastq.gz GBI_Adensiflora_S3_L001_R1_001.fastq.gz GBI_Adensiflora_S3_L001_R2_001.fastq.gz 
# cutadapt -a ATTAGCCG -A AGTCGCTT -o GBI_Apallida_S1_L001_R1_001_trimmed.fastq.gz -p GBI_Apallida_S1_L001_R2_001_trimmed.fastq.gz GBI_Apallida_S1_L001_R1_001.fastq.gz GBI_Apallida_S1_L001_R2_001.fastq.gz
# cutadapt -a GAGGCATT -A GCAATTCG -o GBI_Ecovalifolium_S2_L001_R1_001_trimmed.fastq.gz -p GBI_Ecovalifolium_S2_L001_R2_001_trimmed.fastq.gz GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz GBI_Ecovalifolium_S2_L001_R2_001.fastq.gz
# cutadapt -a ATAGGTCC -A TGGTACAG -o GBI_Fstriata_S4_L001_R1_001_trimmed.fastq.gz -p GBI_Fstriata_S4_L001_R2_001_trimmed.fastq.gz GBI_Fstriata_S4_L001_R1_001.fastq.gz GBI_Fstriata_S4_L001_R2_001.fastq.gz
# cutadapt -a TCCACGTT -A GTCTGATC -o GBI_Mabbottii_S5_L001_R1_001_trimmed.fastq.gz -p GBI_Mabbottii_S5_L001_R2_001_trimmed.fastq.gz GBI_Mabbottii_S5_L001_R1_001.fastq.gz GBI_Mabbottii_S5_L001_R2_001.fastq.gz
 
/ocean/projects/bio210016p/shared/programs/TrimGalore-0.6.6/trim_galore --paired --illumina --fastqc --gzip --cores 4 GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz GBI_Ecovalifolium_S2_L001_R2_001.fastq.gz

#48 SUs