#!/bin/bash
set -euo pipefail

expired_keys=$(apt-key list --with-colons 2>/dev/null  | awk -F: '$1 == "pub" && ($2 == "e" || $2 == "r") { print $5 }')
if [[ -n "$expired_keys" ]]; then
  for key in $expired_keys; do
    echo "https://www.google.com/search?q=EXPKEYSIG+$key"
    echo "sudo apt-key del $key"
    apt-key list $key
  done
  exit 1
fi
