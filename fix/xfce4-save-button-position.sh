#!/bin/bash
# shellcheck disable=SC2086
set -euo pipefail

# Save button has no business in the upper right corner.
# Thanks to unni for asking and ToZ for providing an answer
# https://forum.xfce.org/viewtopic.php?id=14614
xfconf-query -c xsettings -p /Gtk/DialogsUseHeader -s false
