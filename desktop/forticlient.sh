#!/bin/bash
set -euo pipefail

# https://repo.fortinet.com/
# via https://www.fortinet.com/support/product-downloads/linux
sudo -i <<'ENDOFSUDO'
wget -q -O - https://repo.fortinet.com/repo/forticlient/7.2/debian/DEB-GPG-KEY | gpg --dearmor > /usr/share/keyrings/repo.fortinet.com.gpg
cat <<'EOF' > /etc/apt/sources.list.d/repo.fortinet.com.list 
deb [arch=amd64 signed-by=/usr/share/keyrings/repo.fortinet.com.gpg] https://repo.fortinet.com/repo/forticlient/7.2/debian/ stable non-free
EOF
apt-get update
apt-get -y install forticlient
ENDOFSUDO
