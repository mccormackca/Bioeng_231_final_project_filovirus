# Multiple Sequence Alignment View

Pre-loaded multiple sequence alignment (MSA) and phylogenetic tree files are provided because generating the MSA using Clustal Omega is a RAM-intensive process and because  the sequence identifiers in the pre-loaded files have been changed to human-readable names (rather than accession numbers).

## Memory requirements
The multiple sequence alignment Clustal Omega requires ~1 GB of available RAM. If your system has less than 1 GB available RAM, use swap memory to free up additional RAM. Swap memory can be configured with the code below.

```
# Navigate to your root directory
cd ~

# create a swapfile in the root directory
# make the swapfile the same size as your system's RAM
sudo fallocate -l 1G /swapfile

# set permissions for the swapfile
sudo chmod 600 /swapfile

# set up swap space
sudo mkswap /swapfile

# turn on swap space
sudo swapon /swapfile

# make the swap memory permanently enabled
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```
Sources for configuring swap memory: https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04
https://www.geeksforgeeks.org/how-to-add-swap-space-on-ubuntu-20-04/

## Generating multiple sequence alignments

Multiple sequence alignments were performed with Clustal Omega (v. 1.2.4). In order to reduce the time and memory complexity, the default clustering parameters were used because they use the mBed algorithm to make a guide tree with rather than using the full pariwise distance matrix. IQtree2 (2.0.7 for Linux 64-bit) was used to generate phylogenetic trees based on the multiple sequence alignments given by Clustal Omega.

The code used to generate the alignments and phylogenetic trees is available in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/main/selected_preloaded_data/scripts/generate_MSAs_and_trees.sh" target="_blank">selected_preloaded_data/scripts/generate_MSAs_and_trees.sh</a>.

Citations:
1. Sievers, Fabian, et al. “Fast, Scalable Generation of High‐quality Protein Multiple Sequence Alignments Using Clustal Omega.” Molecular Systems Biology, vol. 7, no. 1, Jan. 2011, p. 539. DOI.org (Crossref), https://doi.org/10.1038/msb.2011.75.
2. Sievers, Fabian, and Desmond G. Higgins. “Clustal Omega, Accurate Alignment of Very Large Numbers of Sequences.” Multiple Sequence Alignment Methods, edited by David J Russell, vol. 1079, Humana Press, 2014, pp. 105–16. DOI.org (Crossref), https://doi.org/10.1007/978-1-62703-646-7_6.
3. Minh, Bui Quang, et al. “Corrigendum to: IQ-TREE 2: New Models and Efficient Methods for Phylogenetic Inference in the Genomic Era.” Molecular Biology and Evolution, vol. 37, no. 8, Aug. 2020, pp. 2461–2461. DOI.org (Crossref), https://doi.org/10.1093/molbev/msaa131.
