#!/bin/bash 
#SBATCH -D /ocean/projects/bio210016p/shared/novaseq/batch1/rawdata/
#SBATCH --account=bio210016p
#SBATCH --partition=RM-shared
#SBATCH --ntasks-per-node=24
#SBATCH --time=48:00:00
#SBATCH -o /ocean/projects/bio210016p/makman/outs/batch1_jellyfish5.out
#SBATCH -e /ocean/projects/bio210016p/makman/outs/batch1_jellyfish5.err
#SBATCH --mail-user=melis.akman@csueastbay.edu
#SBATCH --mail-type=All


# genome size ~ unknown, s=G + G*(error=0.01)*coverage (30X)= 
# /ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 24 -C -m 20 -s 2G -o Mabbottii_20mer_out <(zcat ./GBI_Mabbottii_S5_L001_R1_001_val_1.fq.gz)
# /ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 24 -C -m 17 -s 2G -o Mabbottii_17mer_out <(zcat ./GBI_Mabbottii_S5_L001_R1_001_val_1.fq.gz)
# /ocean/projects/bio210016p/shared/programs/jellyfish-2.3.0/bin/jellyfish count -t 24 -C -m 23 -s 2G -o Mabbottii_23mer_out <(zcat ./GBI_Mabbottii_S5_L001_R1_001_val_1.fq.gz)

#47 SUs


jellyfish histo -o Mabbottii_20mer_out.histo Mabbottii_20mer_out
jellyfish histo -o Mabbottii_17mer_out.histo Mabbottii_17mer_out
jellyfish histo -o Mabbottii_23mer_out.histo Mabbottii_23mer_out