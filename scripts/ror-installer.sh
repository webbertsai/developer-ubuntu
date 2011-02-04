#!/bin/sh

APTGET="/usr/bin/apt-get"
DPKG="/usr/bin/dpkg"
SUDO="/usr/bin/sudo"
WGET="/usr/bin/wget"

# init, update packages list
${SUDO} ${APTGET} update
${SUDO} ${APTGET} upgrade

# install basic tools
${SUDO} ${APTGET} -y install vim git-core tig apache2 mysql-server

# install ruby tools
${SUDO} ${APTGET} -y install libxml2-dev libxslt-dev libreadline5-dev

# install REE
${WGET} 'http://rubyforge.org/frs/download.php/71098/ruby-enterprise_1.8.7-2010.02_amd64_ubuntu10.04.deb'
${SUDO} ${DPKG} -i ruby-enterprise_1.8.7-2010.02_amd64_ubuntu10.04.deb

# Add Ruby Enterprise bin to PATH
echo 'export PATH="/usr/local/lib/ruby/gems/1.8/bin:$PATH"' >> ~/.profile
