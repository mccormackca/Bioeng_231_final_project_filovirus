#!/bin/bash
cd ~/tmp
#install seqtk for parsing FASTAs
sudo apt-get -y install seqtk

##create individual fasta files containing only the VP35 gene for each genome
#make a .txt file with the sequence id for the NP gene (nucleoprotein)
echo "lcl|NC_002549.1_cds_NP_066244.1_2" > "id_vp35.txt"
#use seqtk to extract the sequences
seqtk subseq Orthoebolavirus_zairense_cds_from_genomic.fna id_vp35.txt > Orthoebolavirus_zairense_cds_VP35.fasta
#repeat for the other genomes
echo "lcl|NC_014372.1_cds_YP_003815424.1_2" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_taiense_cds_from_genomic.fna id_vp35.txt > Orthoebolavirus_taiense_cds_VP35.fasta
echo "lcl|NC_006432.1_cds_YP_138521.1_2" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_sudanense_cds_from_genomic.fna id_vp35.txt > Orthoebolavirus_sudanense_cds_VP35.fasta
echo "lcl|NC_039345.1_cds_YP_009513275.1_2" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_bombaliense_cds_from_genomic.fna id_vp35.txt > Orthoebolavirus_bombaliense_cds_VP35.fasta
echo "lcl|NC_004161.1_cds_NP_690581.1_2" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_restonense_cds_from_genomic.fna id_vp35.txt > Orthoebolavirus_restonense_cds_VP35.fasta
