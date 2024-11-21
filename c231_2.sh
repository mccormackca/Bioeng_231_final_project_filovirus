#!/bin/bash

# Set FTP addresses for NCBI RefSeq genomes of all Ebolavirus species
declare -A ROOTS=(
    [ZAIRE]="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/848/505/GCF_000848505.1_ViralProj14703/"
    [BOMBALI]="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/505/815/GCF_003505815.1_ASM350581v1/"
    [RESTON]="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/854/085/GCF_000854085.1_ViralProj15006/"
    [SUDAN]="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/855/585/GCF_000855585.1_ViralProj15012/"
    [TAI]="https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/888/475/GCF_000888475.1_ViralProj51257/"
)

# Define file suffixes
FILES=("genomic.fna.gz" "genomic.gff.gz" "cds_from_genomic.fna.gz" "rna_from_genomic.fna.gz")

# Download files using wget
echo "Downloading files..."
for species in "${!ROOTS[@]}"; do
    for file in "${FILES[@]}"; do
        wget "${ROOTS[$species]}GCF_$(basename ${ROOTS[$species]}).$file"
    done
done

# Decompress FASTA files
echo "Decompressing FASTA files..."
gunzip *.fna.gz

# Rename files to human-readable names
echo "Renaming files..."
declare -A NAMES=(
    [GCF_000848505.1_ViralProj14703]="Orthoebolavirus_zairense"
    [GCF_003505815.1_ASM350581v1]="Orthoebolavirus_bombaliense"
    [GCF_000854085.1_ViralProj15006]="Orthoebolavirus_restonense"
    [GCF_000855585.1_ViralProj15012]="Orthoebolavirus_sudanense"
    [GCF_000888475.1_ViralProj51257]="Orthoebolavirus_taiense"
)

for file in *; do
    for key in "${!NAMES[@]}"; do
        if [[ $file == $key* ]]; then
            new_name="${file/$key/${NAMES[$key]}}"
            mv "$file" "$new_name"
        fi
    done
done

# Index FASTA files
echo "Indexing FASTA files..."
for file in *.fna; do
    samtools faidx "$file"
done

# Add assemblies to JBrowse
echo "Adding assemblies to JBrowse..."
for file in *.fna; do
    jbrowse add-assembly "$file" --out "$APACHE_ROOT/jbrowse2" --load copy --type=indexedFasta
done

# Process GFF files: sort, compress, index, and add tracks to JBrowse
echo "Processing GFF files..."
for file in *.gff; do
    sorted_file="${file%.gff}_sorted.gff"
    jbrowse sort-gff "$file" > "$sorted_file"
    bgzip "$sorted_file"
    tabix -f "${sorted_file}.gz"
    
    base_name="${file%.gff}"
    jbrowse add-track "${sorted_file}.gz" \
        --out "$APACHE_ROOT/jbrowse2" \
        --load copy \
        --assemblyNames="${base_name}.fna,${base_name}_cds_from_genomic.fna,${base_name}_rna_from_genomic.fna" \
        --force
done

echo "All tasks completed!"
