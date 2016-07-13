#!/usr/bin/env bash
apt-get update -y
add-apt-repository ppa:ondrej/php
apt-get -y update
apt-get install -y git

# Puppet modules
(puppet module list |grep puppetlabs-apache) || puppet module install puppetlabs-apache
(puppet module list |grep puppetlabs-mysql) || puppet module install puppetlabs-mysql
(puppet module list |grep puppetlabs-vcsrepo) || puppet module install puppetlabs-vcsrepo
(puppet module list |grep puppetlabs-stdlib) || puppet module install puppetlabs-stdlib
(puppet module list |grep saz-locales) || puppet module install saz-locales
(puppet module list |grep camptocamp-openldap) || puppet module install camptocamp-openldap
