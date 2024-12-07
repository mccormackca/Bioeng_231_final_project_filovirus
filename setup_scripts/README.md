TODO – clean-up, ignore this for now

end-to-end draft

sudo su -

passwd ubuntu

exit

git clone https://github.com/mccormackca/Bioeng_231_final_project_filovirus.git

cd Bioeng_231_final_project_filovirus/

(prompted to enter password)
./setup_scripts/install_linuxbrew.sh

source ./setup_scripts/install_necessary_tools_1.sh

./setup_scripts/install_necessary_tools_2.sh

export APACHE_ROOT='/var/www/html

./setup_scripts/start_apache_server.sh

./import_ncbi_data.sh

(ads plugins and other default state for convenience)
(enter y to overwrite)
cp config.json $APACHE_ROOT/jbrowse2 -i