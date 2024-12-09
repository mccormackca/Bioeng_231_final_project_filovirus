# Installation

[Text]

## EC2 Linux/Unix
[Text]

### Set (memorable) password in root
```
sudo su -

passwd ubuntu

exit
```

### Clone repository

```
git clone https://github.com/mccormackca/Bioeng_231_final_project_filovirus.git

# Switch to installation directory
cd Bioeng_231_final_project_filovirus/installation
```

### Run installation scripts

```
# Will prompt you to enter your password
# Will prompt for RETURN/ENTER to continue
./install_linuxbrew.sh

./install_necessary_tools_i.sh

# Activate newly dowloaded fnm package
source ~/.bashrc

# Will prompt to enter Y for to continue
./install_necessary_tools_ii.sh
```

### Start Apache server

```
# For use in start_apache_server
export APACHE_ROOT='/var/www/html'

./start_apache_server.sh
```

### Import, index, and transform data  

```
./import_and_configure_ncbi_data.sh

# Ads plugins and other default state for convenience
# Will prompt to enter y to overwrite)
cp config.json $APACHE_ROOT/jbrowse2 -i
```
