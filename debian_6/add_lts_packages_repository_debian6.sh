# CYBERWATCH SAS - 2015
#
# Add LTS Packages Repository for Debian 6 (Squeeze)
#
# Authors :
#   - Florian Wininger <florian@cyberwatch.fr>
#
# Description :
#   Use LTS repository to add the capability to install new security packages.
#   See DSA-2907-1 for more information.
#   http://www.debian.org/security/2014/dsa-2907
#
# Before use :
#   Please read carefully
#   http://wiki.debian.org/LTS
#   http://wiki.debian.org/LTS/Using
#
# Note : the Debian 6 LTS support is vaild until february 2016.
#
# Licence : Released under The MIT License (MIT), See LICENSE FILE

# Add Debian LTS repository at the end of the source.list file

SEPARATOR="### CBW DEBIAN SQUEEZE LTS ###"
SOURCES_LIST_FILE="/etc/apt/sources.list"

cat >>$SOURCES_LIST_FILE <<EOL

$SEPARATOR
deb http://ftp.debian.org/debian/ squeeze-lts main
deb-src http://ftp.debian.org/debian/ squeeze-lts main
$SEPARATOR
EOL
