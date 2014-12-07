#!bin/bash
rpm -ivh https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install puppet puppet-server facter -y
yum install git -y
mv /etc/puppet/ /etc/puppet.import
git clone https://github.com/kkirthana/puppet.git /etc/puppet
puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules
