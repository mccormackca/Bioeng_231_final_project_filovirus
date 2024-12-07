#!/bin/bash
set -e

sudo service apache2 start

mkdir ~/tmp

cd ~/tmp

jbrowse create output_folder
sudo mv output_folder $APACHE_ROOT/jbrowse2
sudo chown -R $(whoami) $APACHE_ROOT/jbrowse2
