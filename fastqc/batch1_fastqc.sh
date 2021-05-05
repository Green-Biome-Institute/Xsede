#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=24
#SBATCH --time=10:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_fastqc.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_fastqc.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All

module load FastQC

# /opt/packages/FastQC/0.11.9/fastqc GBI_Adensiflora_S3_L001_R1_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Adensiflora_S3_L001_R2_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Apallida_S1_L001_R1_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Apallida_S1_L001_R2_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Ecovalifolium_S2_L001_R1_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Ecovalifolium_S2_L001_R2_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Fstriata_S4_L001_R1_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Fstriata_S4_L001_R2_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Mabbottii_S5_L001_R1_001.fastq.gz
# /opt/packages/FastQC/0.11.9/fastqc GBI_Mabbottii_S5_L001_R2_001.fastq.gz

/opt/packages/FastQC/0.11.9/fastqc GBI_Adensiflora_S9_L001_R1_001.fastq.gz
/opt/packages/FastQC/0.11.9/fastqc GBI_Adensiflora_S9_L001_R2_001.fastq.gz

/opt/packages/FastQC/0.11.9/fastqc GBI_Fstriata_S10_L001_R1_001.fastq.gz
/opt/packages/FastQC/0.11.9/fastqc GBI_Fstriata_S10_L001_R2_001.fastq.gz


