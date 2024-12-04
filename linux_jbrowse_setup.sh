#!/bin/bash
set -e

./setup_scripts/linuxbrew_for_aws.sh
./setup_scripts/install_necessary_tools.sh
./setup_scripts/apache_server_setup.sh