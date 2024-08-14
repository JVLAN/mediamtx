#!/bin/bash
#Created by Poli for JVLAN
#28.10.2023

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

screen -dmS MediaMtx $SCRIPT_DIR/mediamtx
echo "Mediamtx was started"
