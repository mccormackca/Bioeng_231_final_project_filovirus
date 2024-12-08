cd ~/tmp
# install seqtk for parsing FASTAs
sudo apt-get -y install seqtk

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