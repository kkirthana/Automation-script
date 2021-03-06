#!bin/bash
echo "This Script will install My web Application on Amazon cloud instance using puppet"
echo "#"
echo "##"
echo "####################"
echo "############################"
echo "#################################"
echo "#######################################"
echo "##############################################"
echo "##################################################################################################"
sudo yum clean all  
echo "Installing repositories for puppet rpms"
echo "#"
echo "##"
echo "####################"
echo "############################"
echo "#################################"
echo "#######################################"
echo "##############################################"
echo "##################################################################################################"
sudo rpm -ivh https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
sudo rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
echo "Installing puppet and facter"
echo "#"
echo "##"
echo "####################"
echo "############################"
echo "#################################"
echo "#######################################"
echo "##############################################"
echo "##################################################################################################"
sudo yum install puppet puppet-server facter -y
echo "Installing git"
echo "#"
echo "##"
echo "####################"
echo "############################"
echo "#################################"
echo "#######################################"
echo "##############################################"
echo "##################################################################################################"
sudo yum install git -y
echo "Downloading Puppet Code from github"
echo "#"
echo "##"
echo "####################"
echo "############################"
echo "#################################"
echo "#######################################"
echo "##############################################"
echo "##################################################################################################"
sudo mv /etc/puppet/ /etc/puppet.import
sudo git clone https://github.com/kkirthana/puppet.git /etc/puppet
echo "Ruunnig Puppet for Web application Deployment"
echo "#"
echo "##"
echo "####################"
echo "############################"
echo "#################################"
echo "#######################################"
echo "##############################################"
echo "##################################################################################################"
sudo puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules
echo "##################################################################################################"
echo "####################################DEPOLYMENT COMPLETE###########################################"
