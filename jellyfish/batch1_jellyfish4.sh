#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM
#SBATCH --ntasks-per-node=128
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_jellyfish4.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_jellyfish4.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All


# genome size ~ 90G, s=G + G*(error=0.01)*coverage (30X)= 120 round up to 120G

/ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 128 -C -m 20 -s 80G -o Fstriata_20mer_out <(zcat ./GBI_Fstriata_S4_S10_L001_R1_001_val_1.fq.gz)
/ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 128 -C -m 17 -s 80G -o Fstriata_17mer_out <(zcat ./GBI_Fstriata_S4_S10_L001_R1_001_val_1.fq.gz)
/ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 128 -C -m 23 -s 80G -o Fstriata_23mer_out <(zcat ./GBI_Fstriata_S4_S10_L001_R1_001_val_1.fq.gz)

#128 CPUs were not enough for s 120G.