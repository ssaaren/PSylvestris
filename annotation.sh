#!/bin/bash
#SBATCH -A snic2018
#SBATCH -p core -n 19
#SBATCH -t 23:00:00
#SBATCH -J annotation
#SBATCH --mail-user sami.saarenpaa@scilifelab.se
#SBATCH -o /proj//private/annotation/Trinotate/stdout.%j
#SBATCH -e /proj//private/annotation/Trinotate/stderr.%j
#SBATCH --mail-type=ALL
#SBATCH --tmp=20480

module load bioinfo-tools
module load trinotate/3.1.1

/sw/apps/bioinfo/trinotate/3.1.1/rackham/auto/autoTrinotate.pl --Trinotate_sqlite /proj/private/annotation/Trinotate.sqlite \
 --transcripts /proj/private/annotation/Trinity.fasta \
 --gene_to_trans_map /proj/private/annotation/190719geneToTransMap \
 --conf /proj/private/annotation/conf.txt \
 --CPU 19
