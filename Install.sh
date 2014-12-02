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
yum clean all  

echo "###########################################INSTALLING GIT########################################"
yum install git -y
echo "Git is Installed successfully" 
echo

echo "##########################################INSTALLING WGET########################################"

yum install wget -y 

echo "Wget is installed successfully" 
echo 

echo "#########################################INSTALLTING VIM#########################################"

yum install vim -y

echo "VIM is installed successfully" 
echo

echo "##########################################INSTALLING APACHE HTTPD SERVER########################"

yum install httpd -y

echo "Apache web server is installed successfully" 
echo 

echo "Download Web Application Source code from GitHub"

git clone https://github.com/kkirthana/WebApp.git /var/www/html/

echo "download of source code complete" 
echo 

echo "Start Web server"

chkconfig httpd on
service httpd start

echo "Apache server started , now visit homepage at  $(hostname)/NewWP.htm"

echo "Installing Nagios"
## RHEL/CentOS 6 32-Bit ##
#rpm -ivh  http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
#rpm -ivh epel-release-6-8.noarch.rpm

## RHEL/CentOS 6 64-Bit ##
# wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
# rpm -ivh epel-release-6-8.noarch.rpm
#rpm -Uvh http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
#rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
#rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/epel-release-7-1.noarch.rpm
#yum install nagios nagios-plugins nagios-plugins-nrpe nagios-devel -y 

echo "####################################################################################################"
echo "####################################################################################################"
echo "#####################################DEPLOYMENT COMPLETE###########################################" 

 


