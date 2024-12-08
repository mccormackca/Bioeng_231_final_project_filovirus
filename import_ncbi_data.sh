#!/bin/bash

export APACHE_ROOT='/var/www/html'

# navigate to the temporary folder for downloading files before upload
cd ~/tmp

# export ftp addresses for the NCBI RefSeq genomes of all ebolavirus species
export ZAIRE_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/848/505/GCF_000848505.1_ViralProj14703/
export BOMBALI_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/505/815/GCF_003505815.1_ASM350581v1/
export RESTON_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/854/085/GCF_000854085.1_ViralProj15006/
export SUDAN_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/855/585/GCF_000855585.1_ViralProj15012/
export TAI_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/888/475/GCF_000888475.1_ViralProj51257/

# download genome FASTA files using wget
wget $ZAIRE_ROOT/GCF_000848505.1_ViralProj14703_genomic.fna.gz
wget $BOMBALI_ROOT/GCF_003505815.1_ASM350581v1_genomic.fna.gz
wget $RESTON_ROOT/GCF_000854085.1_ViralProj15006_genomic.fna.gz
wget $SUDAN_ROOT/GCF_000855585.1_ViralProj15012_genomic.fna.gz
wget $TAI_ROOT/GCF_000888475.1_ViralProj51257_genomic.fna.gz

# download annotation GFF files using wget
wget $ZAIRE_ROOT/GCF_000848505.1_ViralProj14703_genomic.gff.gz
wget $BOMBALI_ROOT/GCF_003505815.1_ASM350581v1_genomic.gff.gz
wget $RESTON_ROOT/GCF_000854085.1_ViralProj15006_genomic.gff.gz
wget $SUDAN_ROOT/GCF_000855585.1_ViralProj15012_genomic.gff.gz
wget $TAI_ROOT/GCF_000888475.1_ViralProj51257_genomic.gff.gz

# download cds_from_genomic FASTA files using wget
wget $ZAIRE_ROOT/GCF_000848505.1_ViralProj14703_cds_from_genomic.fna.gz
wget $BOMBALI_ROOT/GCF_003505815.1_ASM350581v1_cds_from_genomic.fna.gz
wget $RESTON_ROOT/GCF_000854085.1_ViralProj15006_cds_from_genomic.fna.gz
wget $SUDAN_ROOT/GCF_000855585.1_ViralProj15012_cds_from_genomic.fna.gz
wget $TAI_ROOT/GCF_000888475.1_ViralProj51257_cds_from_genomic.fna.gz

# download rna_from_genomic FASTA files using wget
wget $ZAIRE_ROOT/GCF_000848505.1_ViralProj14703_rna_from_genomic.fna.gz
wget $BOMBALI_ROOT/GCF_003505815.1_ASM350581v1_rna_from_genomic.fna.gz
wget $RESTON_ROOT/GCF_000854085.1_ViralProj15006_rna_from_genomic.fna.gz
wget $SUDAN_ROOT/GCF_000855585.1_ViralProj15012_rna_from_genomic.fna.gz
wget $TAI_ROOT/GCF_000888475.1_ViralProj51257_rna_from_genomic.fna.gz

# download protein.faa FASTA files using wget
wget $ZAIRE_ROOT/GCF_000848505.1_ViralProj14703_protein.faa.gz
wget $BOMBALI_ROOT/GCF_003505815.1_ASM350581v1_protein.faa.gz
wget $RESTON_ROOT/GCF_000854085.1_ViralProj15006_protein.faa.gz
wget $SUDAN_ROOT/GCF_000855585.1_ViralProj15012_protein.faa.gz
wget $TAI_ROOT/GCF_000888475.1_ViralProj51257_protein.faa.gz

# gunzip all the gz files

for file in *.fna.gz
do
  gunzip "$file"
done

for file in *.faa.gz
do
  gunzip "$file"
done

# rename the files to human-readable names

mv GCF_000848505.1_ViralProj14703_genomic.fna Orthoebolavirus_zairense.fna
mv GCF_000848505.1_ViralProj14703_genomic.gff.gz Orthoebolavirus_zairense.gff.gz

mv GCF_003505815.1_ASM350581v1_genomic.fna Orthoebolavirus_bombaliense.fna
mv GCF_003505815.1_ASM350581v1_genomic.gff.gz Orthoebolavirus_bombaliense.gff.gz

mv GCF_000854085.1_ViralProj15006_genomic.fna Orthoebolavirus_restonense.fna
mv GCF_000854085.1_ViralProj15006_genomic.gff.gz Orthoebolavirus_restonense.gff.gz

mv GCF_000855585.1_ViralProj15012_genomic.fna Orthoebolavirus_sudanense.fna
mv GCF_000855585.1_ViralProj15012_genomic.gff.gz Orthoebolavirus_sudanense.gff.gz

mv GCF_000888475.1_ViralProj51257_genomic.fna Orthoebolavirus_taiense.fna
mv GCF_000888475.1_ViralProj51257_genomic.gff.gz Orthoebolavirus_taiense.gff.gz

mv GCF_000848505.1_ViralProj14703_cds_from_genomic.fna Orthoebolavirus_zairense_cds_from_genomic.fna
mv GCF_003505815.1_ASM350581v1_cds_from_genomic.fna Orthoebolavirus_bombaliense_cds_from_genomic.fna
mv GCF_000854085.1_ViralProj15006_cds_from_genomic.fna Orthoebolavirus_restonense_cds_from_genomic.fna
mv GCF_000855585.1_ViralProj15012_cds_from_genomic.fna Orthoebolavirus_sudanense_cds_from_genomic.fna
mv GCF_000888475.1_ViralProj51257_cds_from_genomic.fna Orthoebolavirus_taiense_cds_from_genomic.fna

mv GCF_000848505.1_ViralProj14703_rna_from_genomic.fna Orthoebolavirus_zairense_rna_from_genomic.fna
mv GCF_003505815.1_ASM350581v1_rna_from_genomic.fna Orthoebolavirus_bombaliense_rna_from_genomic.fna
mv GCF_000854085.1_ViralProj15006_rna_from_genomic.fna Orthoebolavirus_restonense_rna_from_genomic.fna
mv GCF_000855585.1_ViralProj15012_rna_from_genomic.fna Orthoebolavirus_sudanense_rna_from_genomic.fna
mv GCF_000888475.1_ViralProj51257_rna_from_genomic.fna Orthoebolavirus_taiense_rna_from_genomic.fna

mv GCF_000848505.1_ViralProj14703_protein.faa Orthoebolavirus_zairense_protein.faa
mv GCF_003505815.1_ASM350581v1_protein.faa Orthoebolavirus_bombaliense_protein.faa
mv GCF_000854085.1_ViralProj15006_protein.faa Orthoebolavirus_restonense_protein.faa
mv GCF_000855585.1_ViralProj15012_protein.faa Orthoebolavirus_sudanense_protein.faa
mv GCF_000888475.1_ViralProj51257_protein.faa Orthoebolavirus_taiense_protein.faa

for file in *.fna
do
  samtools faidx "$file"
done

for file in *.faa
do
  samtools faidx "$file"
done

for file in *.fna
do
  jbrowse add-assembly $file --out $APACHE_ROOT/jbrowse2 --load copy --type=indexedFasta
done

for file in *.faa
do
  jbrowse add-assembly $file --out $APACHE_ROOT/jbrowse2 --load copy --type=indexedFasta
done

for file in *.gff.gz
do
  gunzip "$file"
done

# Loop through all .gff files
for file in *.gff; do
    # Define sorted output file name
    sorted_file="${file%.gff}_sorted.gff"
    
    # Sort the GFF file
    echo "Sorting $file..."
    jbrowse sort-gff "$file" > "$sorted_file"
    
    # Compress the sorted file
    echo "Compressing $sorted_file..."
    bgzip "$sorted_file"
    
    # Index the compressed file
    echo "Indexing ${sorted_file}.gz..."
    tabix -f "${sorted_file}.gz"
done

jbrowse add-track Orthoebolavirus_bombaliense_sorted.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames=Orthoebolavirus_bombaliense.fna,Orthoebolavirus_bombaliense_cds_from_genomic.fna --force

jbrowse add-track Orthoebolavirus_restonense_sorted.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames=Orthoebolavirus_restonense.fna,Orthoebolavirus_restonense_cds_from_genomic.fna,Orthoebolavirus_restonense_rna_from_genomic.fna --force

jbrowse add-track Orthoebolavirus_sudanense_sorted.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames=Orthoebolavirus_sudanense.fna,Orthoebolavirus_sudanense_cds_from_genomic.fna,Orthoebolavirus_sudanense_rna_from_genomic.fna --force

jbrowse add-track Orthoebolavirus_taiense_sorted.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames=Orthoebolavirus_taiense.fna,Orthoebolavirus_taiense_cds_from_genomic.fna,Orthoebolavirus_taiense_rna_from_genomic.fna --force

jbrowse add-track Orthoebolavirus_zairense_sorted.gff.gz --out $APACHE_ROOT/jbrowse2 --load copy --assemblyNames=Orthoebolavirus_zairense.fna,Orthoebolavirus_zairense_cds_from_genomic.fna,Orthoebolavirus_zairense_rna_from_genomic.fna --force

jbrowse text-index --out $APACHE_ROOT/jbrowse2 --force
