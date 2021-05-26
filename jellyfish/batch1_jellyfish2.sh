#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=24
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_jellyfish2.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_jellyfish2.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All


# genome size ~ 1.25, s=G + G*(error=0.01)*coverage (30X)= 1.675 round up to 2G

# /ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 48 -C -m 20 -s 2G -o Apallida_20mer_out <(zcat ./GBI_Apallida_S1_L001_R1_001_val_1.fq.gz)
# /ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 48 -C -m 17 -s 2G -o Apallida_17mer_out <(zcat ./GBI_Apallida_S1_L001_R1_001_val_1.fq.gz)
# /ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 48 -C -m 23 -s 2G -o Apallida_23mer_out <(zcat ./GBI_Apallida_S1_L001_R1_001_val_1.fq.gz)

#45 SUs with 48 cores

jellyfish histo -o Apallida_20mer_out.histo Apallida_20mer_out
jellyfish histo -o Apallida_17mer_out.histo Apallida_17mer_out
jellyfish histo -o Apallida_23mer_out.histo Apallida_23mer_out
