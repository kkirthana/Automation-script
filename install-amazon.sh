#!/bin/bash

echo "This Script will install a Web application on any CentOs based Cloud instance or Bare metal server"
echo 
echo "#"
echo "##"
echo "####################"
echo "############################"
echo "#################################"
echo "#######################################"
echo "##############################################"
echo "##################################################################################################"

sudo yum clean all   
sudo echo $2 $3 >> /etc/hosts

echo "###########################################INSTALLING GIT########################################"
sudo yum install git -y
echo "Git is Installed successfully" 
echo

echo "##########################################INSTALLING WGET########################################"

sudo yum install wget -y 

echo "Wget is installed successfully" 
echo 

echo "#########################################INSTALLTING VIM#########################################"

sudo yum install vim -y

echo "VIM is installed successfully" 
echo

echo "##########################################INSTALLING APACHE HTTPD SERVER########################"

sudo yum install httpd -y

echo "Apache web server is installed successfully" 
echo 

echo "Download Web Application Source code from GitHub"

sudo git clone https://github.com/kkirthana/WebApp.git /var/www/html/

echo "download of source code complete" 
echo 

echo "Start Web server"

sudo chkconfig httpd on
sudo service httpd start

echo "Apache server started , now visit homepage at  $(hostname)/NewWP.html"
echo "####################################################################################################"
echo "####################################################################################################"
echo "#####################################DEPLOYMENT COMPLETE###########################################" 
