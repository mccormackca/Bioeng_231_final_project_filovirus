# Orthoebolavirus Jbrowse2 Live Genome Browser
### Avani Ghate, Aziz Kamoun, Jieshan Liu, Caroline McCormack

The Orthoebolavirus Jbrowse2 Genome Browser is a tool for visualizing and exploring the RefSeq genomes for five species within the genus *Orthoebolavirus*. The available views and features highlight the phylogenetic relationships between species and characterize proteins of interest, chosen for their roles in viral transmission and replication.

## Setup
Instructions for setting up Jbrowse2 and configuring the genome browser can be found in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/README.md" target="_blank">setup_scripts/README.md</a>.


## Global Linear Genome View

Visualize an overview of *Orthoebolavirus* genomes and their genomic features with the <a href="http://18.191.252.86/jbrowse2/?session=share-PIqzGabFTA&password=aRGxI" target="_blank">global linear genome view</a>.

Metadata has been added describing the original source of the RefSeq genome assembly, including the host species, strain (if applicable), location, year, and reference. This information is available in  "About track" for all genomic DNA, RNA and DNA cds, and protein files. <img width="1440" alt="View_metadata" src="https://github.com/user-attachments/assets/c8b28ea6-39b8-4334-9f10-f7d0ce1b05d2">

Bookmarks highlighting proteins of interest in the feature tracks are available as BED files that can be imported using the instructions in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/bookmarks/README.md" target="_blank">bookmarks/README.md</a>

## Protein Structures and Amino Acid Sequences
- <a href="http://18.191.252.86/jbrowse2/?session=share-P4_UgTL0io&password=pLM0v" target="_blank">Reston ebolavirus VP35</a>

## Multiple Sequence Alignment View Plugin

Multiple sequence alignments and phylogenetic trees are available comparing the full genome sequence and the amino acid sequences of three selected proteins (nucleoprotein, membrane-associated protein, and the polymerase complex protein) across all five Orthoebolavirus species. We chose to provide the multiple sequence alignment (MSA) and phylogenetic tree files pre-loaded for two reasons. Firstly, generating the MSA using Clustal Omega (v. 1.2.4) is a RAM-intensive process. Secondly, we manually changed the sequence identifiers in the pre-loaded files so that human-readable names (rather than accession numbers) would be displayed in Jbrowse. Instructions for creating the MSAs and phylogenetic trees can be found in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/main/selected_preloaded_data/README.md" target="_blank">selected_preloaded_data/README.md</a>. the Pre-loaded data is avialable here in the <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/tree/main/selected_preloaded_data)" target="_blank">Selected Preloaded Data</a> folder or with the following static URLs, hosted by Amazon Web Services S3.

- Full genome DNA sequences:
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/all_genomes_aligned.fasta
  - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/all_genomes_aligned.fasta.treefile
- Nucleoprotein (NP):
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/NP_aligned.fasta
 - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/NP_aligned.fastatreefile
- Polymerase complex protein (VP35):
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP35_aligned.fasta
  - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP35_aligned.fastatreefile
- Membrane-associated protein (VP24):
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP24_aligned.fasta
  - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP24_aligned.fastatreefile

The above URLs can be copied and pasted the URLs into the Jbrowse MSA view:
<img width="1440" alt="MSA_URLs" src="https://github.com/user-attachments/assets/e0b63d84-1f30-4b9b-90a2-4be4485dcb63">

## Dot plots and linear synteny
