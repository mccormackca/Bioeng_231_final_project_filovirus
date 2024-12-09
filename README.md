# Orthoebolavirus JBrowse2 Genome Browser
_Authors: Avani Ghate, Aziz Kamoun, Jieshan Liu, Caroline McCormack_

The Orthoebolavirus [JBrowse2 Genome Browser](https://jbrowse.org/jb2/) is a tool for visualizing and exploring the RefSeq genomes for five species in the genus *Orthoebolavirus*. The available views and features highlight the phylogenetic relationships between species and characterize proteins of interest, chosen for their roles in viral transmission and replication.

## Table of Contents
1. Installation
2. Global Linear Genome View with Feature Annotations
3. Multiple Sequence Alignments
4. Protein Structures and Amino Acid Sequences
5. Dotplots and Synteny

## Installation
Instructions for setting up and configuring this instance of the JBrowse2 the genome browser can be found in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/setup_scripts/README.md" target="_blank">setup_scripts/README.md</a>.

## Global Linear Genome View with Feature Annotations

<a href="http://18.191.252.86/jbrowse2/?session=share-MvULDQhTxo&password=YEDVP" target="_blank">Begin exploring here</a>: visualize an overview of five *Orthoebolavirus* genomes and their genomic features. Continue reading below for further instructions on how to leverage and interpet this view.

![Screenshot 2024-12-08 at 7 54 37 PM](https://github.com/user-attachments/assets/a3261712-b929-4920-b560-2db052a7d403)

#### Accessing sequence and feature metadata

Metadata has been added describing the original source of the RefSeq genome assembly, including the host species, strain (if applicable), location, year, and reference. This information is available in  "About track" for all genomic DNA, RNA and DNA cds, and protein files. <img width="1440" alt="View_metadata" src="https://github.com/user-attachments/assets/c8b28ea6-39b8-4334-9f10-f7d0ce1b05d2">

<p align="center" width="100%">
    <img src="https://github.com/user-attachments/assets/f33ba9ce-28dd-4714-9686-b6dc7c7a85f0">
</p>

#### Importing bookmarks

Bookmarks highlighting proteins of interest in the feature tracks are available as BED files that can be imported using the instructions in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/bookmarks/README.md" target="_blank">bookmarks/README.md</a>.

![Screenshot 2024-12-08 at 8 16 32 PM](https://github.com/user-attachments/assets/4e8a841d-4504-423f-94f3-f2b3d92c125e)

## Multiple Sequence Alignments

<a href="http://18.191.252.86/jbrowse2/?session=share-1pr93aQlwA&password=IYAAm" target="_blank">Begin exploring here</a>: visualize multiple sequence alignments and phylogenetic trees. Continue reading below for further instructions on how to leverage and interpet this view.

![Screenshot 2024-12-08 at 7 58 11 PM](https://github.com/user-attachments/assets/8f11dae0-c00d-4856-a5bc-d66a20d90aa0)

Multiple sequence alignments and phylogenetic trees are available comparing the full genome sequence and the amino acid sequences of three selected proteins (nucleoprotein, membrane-associated protein, and the polymerase complex protein) across all five *Orthoebolavirus* species. We chose to provide the multiple sequence alignment (MSA) and phylogenetic tree files for two reasons. Firstly, generating the MSA using Clustal Omega (v. 1.2.4) is a RAM-intensive process. Secondly, we manually changed the sequence identifiers in the pre-loaded files so that human-readable names (rather than accession numbers) would be displayed in Jbrowse. Instructions for creating the MSAs and phylogenetic trees can be found in <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/selected_preloaded_data/README.md" target="_blank">selected_preloaded_data/README.md</a>. The pre-loaded data is avialable here in the <a href="https://github.com/mccormackca/Bioeng_231_final_project_filovirus/tree/main/selected_preloaded_data" target="_blank">selected_preloaded_data</a> folder or with the following static URLs:

| Category                          | MSA                                                                                                  | Tree                                                                                                  |
|-----------------------------------|------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| **Full genome DNA sequences**     | [MSA](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/all_genomes_aligned.fasta)          | [Tree](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/all_genomes_aligned.fasta.treefile)  |
| **Nucleoprotein (NP)**            | [MSA](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/NP_aligned.fasta)                   | [Tree](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/NP_aligned.fasta.treefile)          |
| **Polymerase complex protein (VP35)** | [MSA](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP35_aligned.fasta)                 | [Tree](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP35_aligned.fasta.treefile)        |
| **Membrane-associated protein (VP24)** | [MSA](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP24_aligned.fasta)                 | [Tree](https://selected-preloaded-files.s3.us-east-2.amazonaws.com/VP24_aligned.fasta.treefile)        |


The above URLs can be copied and pasted into the Jbrowse MSA view:

<img width="1440" alt="MSA_URLs" src="https://github.com/user-attachments/assets/e0b63d84-1f30-4b9b-90a2-4be4485dcb63">

## Protein Structures and Amino Acid Sequences
<a href="http://18.191.252.86/jbrowse2/?session=share-rIOKlyay49&password=B9ZPu" target="_blank">Begin exploring here</a>: visualize available Protein Data Bank (PDB) data of full protein structures and significant protein subdomains alongside the full amino acid sequence for each virus. Continue reading below for further instructions on how to leverage and interpet this view.

![Screenshot 2024-12-08 at 8 02 30 PM](https://github.com/user-attachments/assets/0a4fb7de-139d-4493-b86c-d3c5c99b937c)

| Virus  | VP35                                                                                             | NP                                                                 | VP24                                                                 |
|--------|--------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|----------------------------------------------------------------------|
| Zaire  | [3L29: Crystal Structure of Zaire Ebola VP35 interferon inhibitory domain K319A/R322A mutant](https://www.rcsb.org/structure/3L29) | N/A                                                                 | [4M0Q: Ebola virus VP24 structure](https://www.rcsb.org/structure/4M0Q) |
| Reston | [3KS8: Crystal structure of Reston ebolavirus VP35 RNA binding domain in complex with 18bp dsRNA](https://www.rcsb.org/structure/3KS8)  | N/A                                                                 | [4D9O: Structure of ebolavirus protein VP24 from Reston](https://www.rcsb.org/structure/4D9O) |
| Bombali| N/A                                                                                              | N/A                                                                 | N/A                                                                  |
| Sudan  | N/A                                                                                              | N/A                                                                 | [3VNF: Structure of the ebolavirus protein VP24 from Sudan](https://www.rcsb.org/structure/3VNF) |
| Tai    | N/A                                                                                              | [5E2X: The crystal structure of the C-terminal domain of Ebola (Tai Forest) nucleoprotein](https://www.rcsb.org/structure/5E2X) | N/A                                                                  |

#### Accessing saved structures

![Screenshot 2024-12-08 at 8 09 59 PM](https://github.com/user-attachments/assets/21b6e57a-77cb-43b5-9d0f-4afaf9cccbff)

![Screenshot 2024-12-08 at 8 10 03 PM](https://github.com/user-attachments/assets/85f94fdb-7857-422c-b048-d3ca9779b539)

![Screenshot 2024-12-08 at 8 10 11 PM](https://github.com/user-attachments/assets/69744db8-01ac-41da-9628-497ea239daac)

## Dotplots and Synteny
<a href="http://18.191.252.86/jbrowse2/?session=share-O7LGR6_SBo&password=zEFH8" target="_blank">Begin exploring here</a>: visualize the dotplot and syteney views for two selected genomes. Continue reading below for further instructions on how to leverage and interpet this view.

![Screenshot 2024-12-08 at 8 01 34 PM](https://github.com/user-attachments/assets/69d24bd0-497e-48a1-a5cd-c28a10da1787)

The linked session includes a dotplot view to visualize a pairwise alignment between *Orthoebolavirus bombaliense* and *Orthoebolavirus restonense*. These two genomes were compared because they reside on different branches of the phylogenetic tree and are thus more distantly related to each other (see multiple sequence alignments for phylogenetic analysis). However, these two viruses are highly similar, as evidenced by the solid line on the dotplot.

Single-stranded genomic sequences are shown for the five species in a linear synteny view below the dotplot.
