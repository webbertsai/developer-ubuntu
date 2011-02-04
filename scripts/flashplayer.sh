#!/bin/sh

ADDGROUP="/usr/sbin/addgroup"
APTGET="/usr/bin/apt-get"
CAT="/bin/cat"
CHMOD="/bin/chmod"
CHOWN="/bin/chown"
DPKG="/usr/bin/dpkg"
ECHO="/bin/echo"
ENV="/usr/bin/env"
GROUPADD="/usr/sbin/groupadd"
HOSTNAME="/bin/hostname"
KILL="/bin/kill"
LN="/bin/ln"
MKDIR="/bin/mkdir"
MV="/bin/mv"
PWD="/bin/pwd"
SED="/bin/sed"
SHA1SUM="/usr/bin/sha1sum"
SYSCTL="/sbin/sysctl"
TAR="/bin/tar"
USERADD="/usr/sbin/useradd"
UUDECODE="/usr/bin/uudecode"
WGET="/usr/bin/wget"

${WGET} 'http://download.macromedia.com/pub/labs/flashplayer10/flashplayer10_2_p3_64bit_linux_111710.tar.gz'
${TAR} xvfz flashplayer10_2_p3_64bit_linux_111710.tar.gz
${MKDIR} -p ~/.mozilla/plugins
${MV} libflashplayer.so ~/.mozilla/plugins
