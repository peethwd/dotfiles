#!/bin/bash
## @auhor Peter Heywood <peethwd@gmail.com>
## Script to fix permission issues with apache in my home folder 
## via http://askubuntu.com/questions/26848/permissions-issue-how-can-apache-access-files-in-my-home-directory
 

sudo adduser $USER www-data
sudo chown -R www-data:www-data /home/$USER/code/php
sudo chmod -R 775 /home/$USER/code/php
