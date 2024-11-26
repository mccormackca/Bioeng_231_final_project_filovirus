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
