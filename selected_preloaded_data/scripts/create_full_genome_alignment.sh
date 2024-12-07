# install clustalo
sudo apt -y install clustalo
# combine sequences into one fasta file
cd ~/tmp
cat Orthoebolavirus_bombaliense.fna Orthoebolavirus_restonense.fna Orthoebolavirus_sudanense.fna Orthoebolavirus_taiense.fna Orthoebolavirus_zairense.fna >> all_genomes.fna
# run clustalo 
clustalo -i all_genomes.fna -o all_genomes_aligned.fasta