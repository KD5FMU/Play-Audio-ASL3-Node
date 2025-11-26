#!/bin/bash
#
# playaudio.sh – Play an audio file over an AllStarLink v3 node (Debian 12)

NODE="YOUR_NODE_NUMBER"

# Require root to talk to asterisk.ctl
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run with sudo or as root."
    exit 1
fi

if [ -z "$1" ]; then
    echo "Usage: $0 <audio_file_without_extension>"
    exit 1
fi

/usr/sbin/asterisk -rx "rpt localplay ${NODE} $1"
