# Installation

Please follow the below guide below. Currently, this document only supports setup on Amazon Web Services (AWS) Elastic Cloud Compute remote instance with a Linux/Unix image. Please file requests for additional platform support in the "Issues" tab of this repository.

## AWS EC2: Linux/Unix

Instructions on EC2 instance setup are out of scope of this guide. Please refer to the web to create a `t2.micro` instance  `ubuntu` instance with disk space of 30 GiB to accomodate additional viral genomes that may be added to this project in the future

### Set (memorable) password in root

```
# Access root
sudo su -

# Will prompt to enter new password twice
passwd ubuntu

# Exit root
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

# Activate newly downloaded fnm package
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
# Will prompt to enter Y for to continue
cp config.json $APACHE_ROOT/jbrowse2 -i
```

You are now done! Visit http://your-ec2-public-ip-address/jbrowse2/ and follow the instructions in (1) [jbrowse_sessions/README.md](https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/jbrowse_sessions/README.md) and (2) [jbrowse_bookmarks/README.md](https://github.com/mccormackca/Bioeng_231_final_project_filovirus/blob/main/jbrowse_bookmarks/README.md).
