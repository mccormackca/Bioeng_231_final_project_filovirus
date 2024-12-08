cd ~/tmp
# install seqtk for parsing FASTAs
sudo apt-get -y install seqtk
# install clustal omega for generating multiple sequence alignment files
sudo apt -y install clustalo
# install iqtree for generating phylogenetic trees
sudo apt-get install iqtree
##has a y/n prompt about memory usage. Choose y to intall

# combine full genome sequences into one fasta file
cat Orthoebolavirus_bombaliense.fna Orthoebolavirus_restonense.fna Orthoebolavirus_sudanense.fna Orthoebolavirus_taiense.fna Orthoebolavirus_zairense.fna >> all_genomes.fna

##make fasta files with the sequences of one protein across all five genomes

# add protein seqs from Orthoebolavirus zairense to respective files
# make a .txt file with the sequence id for the NP gene (nucleoprotein)
echo "NP_066243.1" > "id_np.txt"
# use seqtk to extract the sequences
seqtk subseq Orthoebolavirus_zairense_protein.faa id_np.txt > NP.fasta
# for the vp24 gene (membrate associated protein)
echo "NP_066250.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_zairense_protein.faa id_vp24.txt > vp24.fasta
# for the vp35 gene (polymerase complex protein)
echo "NP_066244.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_zairense_protein.faa id_vp35.txt > vp35.fasta

# add protein seqs from Orthoebolavirus taiense to respective files
echo "YP_003815423.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_taiense_protein.faa id_np.txt >> NP.fasta
echo "YP_003815430.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_taiense_protein.faa id_vp24.txt >> vp24.fasta
echo "YP_003815424.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_taiense_protein.faa id_vp35.txt >> vp35.fasta


# add protein seqs from Orthoebolavirus sudanense to respective files
echo "YP_138520.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_sudanense_protein.faa id_np.txt >> NP.fasta
echo "YP_138526.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_sudanense_protein.faa id_vp24.txt >> vp24.fasta
echo "YP_138521.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_sudanense_protein.faa id_vp35.txt >> vp35.fasta

#a dd protein seqs from Orthoebolavirus restonense to respective files
echo "NP_690580.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_restonense_protein.faa id_np.txt >> NP.fasta
echo "NP_690586.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_restonense_protein.faa id_vp24.txt >> vp24.fasta
echo "NP_690581.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_restonense_protein.faa id_vp35.txt >> vp35.fasta

# add protein seqs from Orthoebolavirus bombaliense to respective files
echo "YP_009513274.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_bombaliense_protein.faa id_np.txt >> NP.fasta
echo "YP_009513281.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_bombaliense_protein.faa id_vp24.txt >> vp24.fasta
echo "YP_009513275.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_bombaliense_protein.faa id_vp35.txt >> vp35.fasta

#Generate multiple sequence alignments

# run clustal omega on full genomes
clustalo -i all_genomes.fna -o all_genomes_aligned.fasta
# run clustal omega on nucleoprotein sequences
clustalo -i all_genomes.fna -o NP.fasta
# run clustal omega on membrane-associated protein (VP24) sequences
clustalo -i all_genomes.fna -o vp24.fasta
# run clustal omega on polymerase complex protein (VP35) sequences
clustalo -i all_genomes.fna -o vp35.fasta

#Generate phylogenetic tree files using IQtree2
iqtree2 -s all_genomes_aligned.fasta
iqtree2 -s NP_aligned.fasta
iqtree2 -s vp24_aligned.fasta 
iqtree2 -s vp35_aligned.fasta
