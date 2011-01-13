#!/bin/sh

APTGET="/usr/bin/apt-get"
DPKG="/usr/bin/dpkg"
WGET="/usr/bin/wget"

# init, update packages list
${APTGET} update
${APTGET} upgrade

# install basic tools
${APTGET} -y install vim git-core tig apache2 mysql-server

# install ruby tools
${APTGET} -y install libxml2-dev libxslt-dev libreadline5-dev

# install REE
${WGET} 'http://rubyforge.org/frs/download.php/71098/ruby-enterprise_1.8.7-2010.02_amd64_ubuntu10.04.deb'
${DPKG} -i ruby-enterprise_1.8.7-2010.02_amd64_ubuntu10.04.deb

