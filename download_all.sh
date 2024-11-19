#!/bin/bash
#navigate to the temporary folder for downloading files before upload
cd ~/tmp

#export ftp addresses for the NCBI RefSeq genomes of all ebolavirus species
export ZAIRE_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/848/505/GCF_000848505.1_ViralProj14703
export BOMBALI_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/505/815/GCF_003505815.1_ASM350581v1
export RESTON_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/854/085/GCF_000854085.1_ViralProj15006
export SUDAN_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/855/585/GCF_000855585.1_ViralProj15012
export TAI_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/888/475/GCF_000888475.1_ViralProj51257

declare -A FILEPATHS

#Store filepaths so you can iterate through them. Name them human-readable names so the file output can have those names
FILEPATHS=(
[Orthoebolavirus_zairense]="${ZAIRE_ROOT}/GCF_000848505.1_ViralProj14703_"
[Orthoebolavirus_bombaliense]="${BOMBALI_ROOT}/GCF_003505815.1_ASM350581v1_"
[Orthoebolavirus_restonense]="${RESTON_ROOT}/GCF_000854085.1_ViralProj15006_"
[Orthoebolavirus_sudanense]="${SUDAN_ROOT}/GCF_000855585.1_ViralProj15012_"
[Orthoebolavirus_taiense]="${TAI_ROOT}/GCF_000888475.1_ViralProj51257_"
)
for SPECIES in "${!FILEPATHS[@]}"; do
      PATH=${FILEPATHS[$SPECIES]}
      #download genome FASTA files using wget
      /usr/bin/wget -O ${SPECIES}_genomic.fna.gz "${PATH}genomic.fna.gz"
      #download genome GFF files using wget
      /usr/bin/wget -O ${SPECIES}_genomic.gff.gz "${PATH}genomic.gff.gz"
      #download coding sequence files using wget
      /usr/bin/wget -O ${SPECIES}_cds_from_genomic.fna.gz "${PATH}cds_from_genomic.fna.gz"
      #download RNA sequence files using wget
      /usr/bin/wget -O ${SPECIES}_rna_from_genomic.fna.gz "${PATH}rna_from_genomic.fna.gz"
                                                                                            
