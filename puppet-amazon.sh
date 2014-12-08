#!bin/bash
sudo yum clean all  
sudo rpm -ivh https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
sudo rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo yum install puppet puppet-server facter -y
sudo yum install git -y
sudo mv /etc/puppet/ /etc/puppet.import
sudo git clone https://github.com/kkirthana/puppet.git /etc/puppet
sudo puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules
