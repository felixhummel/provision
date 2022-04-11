#!/bin/bash
set -euo pipefail

here=$(cd "$(dirname "$0")" && pwd)
cd $here

sudo cp src/check-apt-key-expired.sh /usr/local/sbin/check-apt-key-expired.sh
sudo rm -f /etc/cron.daily/check-apt-key-expired.sh
sudo ln -s /usr/local/sbin/check-apt-key-expired.sh /etc/cron.daily/
