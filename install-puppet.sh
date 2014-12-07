#!bin/bash
ssh -i $1 $2 rpm -ivh https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm
ssh -i $1 $2 rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
ssh -i $1 $2 yum install puppet puppet-server facter -y
ssh -i $1 $2 yum install git -y
ssh -i $1 $2 mv /etc/puppet/ /etc/puppet.import
ssh -i $1 $2 git clone https://github.com/kkirthana/puppet.git /etc/puppet
ssh -i $1 $2 puppet apply /etc/puppet/manifests/site.pp --modulepath=/etc/puppet/modules
