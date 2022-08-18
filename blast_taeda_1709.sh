#!/bin/bash -l
#SBATCH -J taeda_blast_171106
#SBATCH -o /wrk/ssaarenp/DONOTREMOVE/blast_taeda/taeda_blast_out_171106.txt
#SBATCH -e /wrk/ssaarenp/DONOTREMOVE/blast_taeda/taeda_blast_err_171106.txt
#SBATCH -t 1-00:00:00
#SBATCH -n 1
#SBATCH --nodes=1  
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=12000
#SBATCH -p serial
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ssaarenp@student.oulu.fi
#SBATCH -s
#

module load biokit

pb blastn -query /wrk/ssaarenp/DONOTREMOVE/str_spec_1309/Trinity.fasta -dbnuc Pita.v2.01.fasta -evalue 1e-30 -outfmt 6 -out taeda_171106_output.file
