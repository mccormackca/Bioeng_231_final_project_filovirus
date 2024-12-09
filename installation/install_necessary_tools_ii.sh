#!/bin/bash
set -e

# download and install Node.js
fnm use --install-if-missing 20
# verifies the right Node.js version is in the environment
node -v # should print `v20.18.0`
# verifies the right npm version is in the environment
npm -v # should print `10.8.2`

npm install -g @jbrowse/cli
jbrowse --version

# System dependencies: install wget (if not already installed), apache2, samtools, and tabix.

# wget is a tool for retrieving files over widely-used Internet protocols like HTTP and FTP.
# apache2 allows you to run a web server on your machine.
sudo apt install wget apache2

# samtools and tabix are tools for processing and indexing genome and genome annotation files.
brew install samtools htslib
