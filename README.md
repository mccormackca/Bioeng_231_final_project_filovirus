# Bioeng_231_final_project_filovirus

Bash script content for downloading and unzipping fasta and annotation files:
```
#!/bin/bash
#navigate to the temporary folder for downloading files before upload
#export ftp addresses for the NCBI RefSeq genomes of all ebolavirus species
export ZAIRE_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/848/505/GCF_000848505.1_ViralProj14703/
export BOMBALI_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/505/815/GCF_003505815.1_ASM350581v1/
export RESTON_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/854/085/GCF_000854085.1_ViralProj15006/
export SUDAN_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/855/585/GCF_000855585.1_ViralProj15012/
export TAI_ROOT=https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/888/475/GCF_000888475.1_ViralProj51257/

#download genome FASTA files using wget
wget $ZAIRE_ROOT/GCF_000848505.1_ViralProj14703_genomic.fna.gz
wget $BOMBALI_ROOT/GCF_003505815.1_ASM350581v1_genomic.fna.gz
wget $RESTON_ROOT/GCF_000854085.1_ViralProj15006_genomic.fna.gz
wget $SUDAN_ROOT/GCF_000855585.1_ViralProj15012_genomic.fna.gz
wget $TAI_ROOT/GCF_000888475.1_ViralProj51257_genomic.fna.gz

#donload annotation GFF files using wget
wget $ZAIRE_ROOT/GCF_000848505.1_ViralProj14703_genomic.gff.gz
wget $BOMBALI_ROOT/GCF_003505815.1_ASM350581v1_genomic.gff.gz
wget $RESTON_ROOT/GCF_000854085.1_ViralProj15006_genomic.gff.gz
wget $SUDAN_ROOT/GCF_000855585.1_ViralProj15012_genomic.gff.gz
wget $TAI_ROOT/GCF_000888475.1_ViralProj51257_genomic.gff.gz

#gunzip all the gz files
for file in *.fna.gz
do
  gunzip "$file"
done

#rename the files to human-readable names
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


```
