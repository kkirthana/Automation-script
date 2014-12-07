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
rm -rf ~/.ssh/known_hosts
ssh -i $1 $2 yum clean all  
echo $2 $3 >> /etc/hosts

echo "###########################################INSTALLING GIT########################################"
ssh -i $1 $2 yum install git -y
echo "Git is Installed successfully" 
echo

echo "##########################################INSTALLING WGET########################################"

ssh -i $1 $2 yum install wget -y 

echo "Wget is installed successfully" 
echo 

echo "#########################################INSTALLTING VIM#########################################"

ssh -i $1 $2 yum install vim -y

echo "VIM is installed successfully" 
echo

echo "##########################################INSTALLING APACHE HTTPD SERVER########################"

ssh -i $1 $2 yum install httpd -y

echo "Apache web server is installed successfully" 
echo 

echo "Download Web Application Source code from GitHub"

ssh -i $1 $2 git clone https://github.com/kkirthana/WebApp.git /var/www/html/

echo "download of source code complete" 
echo 

echo "Start Web server"

ssh -i $1 $2 chkconfig httpd on
ssh -i $1 $2 service httpd start

echo "Apache server started , now visit homepage at  $(hostname)/NewWP.html"
echo "####################################################################################################"
echo "####################################################################################################"
echo "#####################################DEPLOYMENT COMPLETE###########################################" 
