# Orthoebolavirus Jbrowse2 Live Genome Browser
### Avani Ghate, Aziz Kamoun, Jieshan Liu, Caroline McCormack

The Orthoebolavirus Jbrowse2 Genome Browser is a tool for visualizing and exploring the RefSeq genomes for five species in the genus *Orthoebolavirus*. The available views and features highlight the phylogenetic relationships between species and characterize proteins of interest, chosen for their roles in viral transmission and replication.

## Setup
Instructions for setting up Jbrowse2 and configuring the genome browser can be found in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/setup_scripts/README.md" target="_blank">setup_scripts/README.md</a>. All necessary data can be downloaded and uploaded to Jbrowse with <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/import_ncbi_data.sh" target="_blank">import_ncbi_data.sh</a>.

## Global Linear Genome View with Feature Annotations

<a href="http://18.191.252.86/jbrowse2/?session=share-MvULDQhTxo&password=YEDVP" target="_blank">Begin exploring here</a>

Visualize an overview of five *Orthoebolavirus* genomes and their genomic features.

Metadata has been added describing the original source of the RefSeq genome assembly, including the host species, strain (if applicable), location, year, and reference. This information is available in  "About track" for all genomic DNA, RNA and DNA cds, and protein files. <img width="1440" alt="View_metadata" src="https://github.com/user-attachments/assets/c8b28ea6-39b8-4334-9f10-f7d0ce1b05d2">

Bookmarks highlighting proteins of interest in the feature tracks are available as BED files that can be imported using the instructions in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/bookmarks/README.md" target="_blank">bookmarks/README.md</a>

## Protein Structures and Amino Acid Sequences
<a href="http://18.191.252.86/jbrowse2/?session=share-rIOKlyay49&password=B9ZPu" target="_blank">Begin exploring here</a>

## Multiple Sequence Alignments

<a href="http://18.191.252.86/jbrowse2/?session=share-1pr93aQlwA&password=IYAAm" target="_blank">Begin exploring here</a>

Multiple sequence alignments and phylogenetic trees are available comparing the full genome sequence and the amino acid sequences of three selected proteins (nucleoprotein, membrane-associated protein, and the polymerase complex protein) across all five *Orthoebolavirus* species. We chose to provide the multiple sequence alignment (MSA) and phylogenetic tree files for two reasons. Firstly, generating the MSA using Clustal Omega (v. 1.2.4) is a RAM-intensive process. Secondly, we manually changed the sequence identifiers in the pre-loaded files so that human-readable names (rather than accession numbers) would be displayed in Jbrowse. Instructions for creating the MSAs and phylogenetic trees can be found in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/selected_preloaded_data/README.md" target="_blank">selected_preloaded_data/README.md</a>. The pre-loaded data is avialable here in the <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/tree/main/selected_preloaded_data" target="_blank">selected_preloaded_data</a> folder or with the following static URLs:

- Full genome DNA sequences:
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/all_genomes_aligned.fasta
  - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/all_genomes_aligned.fasta.treefile
- Nucleoprotein (NP):
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/NP_aligned.fasta
 - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/NP_aligned.fasta.treefile
- Polymerase complex protein (VP35):
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP35_aligned.fasta
  - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP35_aligned.fasta.treefile
- Membrane-associated protein (VP24):
  - MSA: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP24_aligned.fasta
  - Tree: https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP24_aligned.fasta.treefile

The above URLs can be copied and pasted into the Jbrowse MSA view:
<img width="1440" alt="MSA_URLs" src="https://github.com/user-attachments/assets/e0b63d84-1f30-4b9b-90a2-4be4485dcb63">

## Dot plots and linear synteny
<a href="http://18.191.252.86/jbrowse2/?session=share-O7LGR6_SBo&password=zEFH8" target="_blank">Begin exploring here</a>

This live session includes a dot plot view to visualize a pairwise alignment between *Orthoebolavirus bombaliense* and *Orthoebolavirus restonense*. These two genomes were compared because they reside on different branches of the phylogenetic tree and are thus more distantly related to each other (see multiple sequence alignments for phylogenetic analysis). However, these two viruses are highly similar, as evidenced by the solid line on the dotplot.

Single-stranded genomic sequences are shown for the five species in a linear synteny view below the dotplot.
