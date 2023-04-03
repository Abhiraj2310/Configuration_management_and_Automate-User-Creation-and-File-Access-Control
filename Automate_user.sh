#!bin/bash/

#In this project, I wrote a shell script that automates the process of creating a new user, creating a new directory, granting access , creating a newgroup, adding the user to the group and folder, granting the user sudo access, and setting appropriate file permissions.

#Creating New Directories and Sub-directories.
Sudo mkdir /Clients
sudo mkdir /Clients/Technical
sudo mkdir /Clients/Manager

#Creating New Group as Technical,adding TechEng_01 user to the group, Granting access to specific directory
sudo groupadd Technical
sudo adduser TechEng_01 Technical
sudo chgrp -R Technical /Technical
sudo chmod -R 775 /Technical
sudo setfacl -dr -m g:Technical:rwx /Technical

sudo groupadd Manager
sudo adduser GenManager_01 Manager
sudo chgrp -R Technical /Manager
sudo chmod -R 775 /Manager
sudo setfacl -dr -m g:Manager:rwx /Manager

