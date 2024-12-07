npm install -g @jbrowse/cli
jbrowse --version


# System dependencies: install wget (if not already installed), apache2, samtools, and tabix.

# wget is a tool for retrieving files over widely-used Internet protocols like HTTP and FTP.
# apache2 allows you to run a web server on your machine.
sudo apt install wget apache2

# samtools and tabix are tools for processing and indexing genome and genome annotation files.
brew install samtools htslib
