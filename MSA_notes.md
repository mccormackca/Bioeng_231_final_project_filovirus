Clustal Omega requires 1-2 GB of available RAM. If your system has less available RAM than that, use swap memory to free up additional RAM. 
Sources: https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04
https://www.geeksforgeeks.org/how-to-add-swap-space-on-ubuntu-20-04/
```
#Navigate to your root directory
cd /
#create a swapfile in the root directory
#make the swapfile the same size as your system's RAM
sudo fallocate -l 1G /swapfile
#set permissions for the swapfile
sudo chmod 600 /swapfile
#set up swap space
sudo mkswap /swapfile
#turn on swap space
sudo swapon /swapfile
#make the swap memory permanently enabled
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

Citations for ClustalOmega: 
Sievers F, Wilm A, Dineen DG, Gibson TJ, Karplus K, Li W, Lopez R, McWilliam H, Remmert  M, Söding J, Thompson JD, Higgins DG (2011).  Fast, scalable generation of high-quality protein multiple sequence alignments using Clustal Omega. Mol Syst Biol 7.

Sievers, F., Higgins, D.G. (2014). Clustal Omega, Accurate Alignment of Very Large Numbers of Sequences. In: Russell, D. (eds) Multiple Sequence Alignment Methods. Methods in Molecular Biology, vol 1079. Humana Press, Totowa, NJ. https://doi.org/10.1007/978-1-62703-646-7_6

In order to reduce the time and memory complexity, we used the default clustering parameters, which uses the mBed algorithm to make a guide tree with rather than the option to use the full pariwise distance matrix to save memory.
```
#install clustalo
sudo apt -y install clustalo
#combine sequences into one fasta file
cd ~/tmp
cat Orthoebolavirus_bombaliense.fna Orthoebolavirus_restonense.fna Orthoebolavirus_sudanense.fna Orthoebolavirus_taiense.fna Orthoebolavirus_zairense.fna >> all_genomes.fna
#run clustalo 
clustalo -i all_genomes.fna -o all_genomes_aligned.fasta
```
Using IQ-tree to get a proper phylogenetic alignment tree:
```
sudo apt-get install iqtree
##has a y/n prompt about memory usage. Choose y to intall
iqtree2 -s all_genomes_aligned.fasta
#gives output all_genomes_aligned.fasta.treefile
```

Now we need to make files that contain all of the amino acid sequences of a given gene across the five species:

Instructions (temporary): copy the code from here down into a bash script called create_protien_fastas.sh
Run it with bash create_protein_fastas.sh
Check to make sure that you now have three new files (NP.fasta, vp24.fasta, and vp35.fasta that each have 5 sequences in them and they all look correct)
```
cd ~/tmp
#install seqtk for parsing FASTAs
sudo apt-get -y install seqtk

##add protien seqs from Orthoebolavirus zairense to respective files
#make a .txt file with the sequence id for the NP gene (nucleoprotein)
echo "NP_066243.1" > "id_np.txt"
#use seqtk to extract the sequences
seqtk subseq Orthoebolavirus_zairense_protein.faa id_np.txt > NP.fasta
#for the vp24 gene (membrate associated protein)
echo "NP_066250.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_zairense_protein.faa id_vp24.txt > vp24.fasta
#for the vp35 gene (polymerase complex protein)
echo "NP_066244.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_zairense_protein.faa id_vp35.txt > vp35.fasta

##add protien seqs from Orthoebolavirus taiense to respective files
echo "YP_003815423.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_taiense_protein.faa id_np.txt >> NP.fasta
echo "YP_003815430.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_taiense_protein.faa id_vp24.txt >> vp24.fasta
echo "YP_003815424.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_taiense_protein.faa id_vp35.txt >> vp35.fasta


##add protien seqs from Orthoebolavirus sudanense to respective files
echo "YP_138520.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_sudanense_protein.faa id_np.txt >> NP.fasta
echo "YP_138526.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_sudanense_protein.faa id_vp24.txt >> vp24.fasta
echo "YP_138521.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_sudanense_protein.faa id_vp35.txt >> vp35.fasta

##add protien seqs from Orthoebolavirus restonense to respective files
echo "NP_690580.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_restonense_protein.faa id_np.txt >> NP.fasta
echo "NP_690586.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_restonense_protein.faa id_vp24.txt >> vp24.fasta
echo "NP_690581.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_restonense_protein.faa id_vp35.txt >> vp35.fasta

##add protien seqs from Orthoebolavirus bombaliense to respective files
echo "YP_009513274.1" > "id_np.txt"
seqtk subseq Orthoebolavirus_bombaliense_protein.faa id_np.txt >> NP.fasta
echo "YP_009513281.1" > "id_vp24.txt"
seqtk subseq Orthoebolavirus_bombaliense_protein.faa id_vp24.txt >> vp24.fasta
echo "YP_009513275.1" > "id_vp35.txt"
seqtk subseq Orthoebolavirus_bombaliense_protein.faa id_vp35.txt >> vp35.fasta
```

