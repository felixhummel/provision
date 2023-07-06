#!/bin/bash
set -euo pipefail

# https://jqlang.github.io/jq/download/
sudo wget -q \
  https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 \
  -O /usr/local/bin/jq
sudo chmod +x /usr/local/bin/jq
