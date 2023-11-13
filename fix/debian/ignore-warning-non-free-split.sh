#!/bin/bash
set -euo pipefail

cat <<'EOF' > /etc/apt/apt.conf.d/no-bookworm-firmware.conf
APT::Get::Update::SourceListWarnings::NonFreeFirmware "false";
EOF
