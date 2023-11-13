#!/bin/bash
set -euo pipefail
# Enable KeepassXC instead:
# Tools > Settings > Secret Service Integration

cp /etc/xdg/autostart/gnome-keyring-secrets.desktop ~/.config/autostart/
echo "Hidden=true" >> ~/.config/autostart/gnome-keyring-secrets.desktop
echo "Remember to restart X (log out, log in)." >&2
