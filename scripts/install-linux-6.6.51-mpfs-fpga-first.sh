#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
REPO_DIR=$(cd $(dirname $0); cd .. ; pwd)
KERNEL_VERSION=6.6.51-mpfs-fpga
LOCAL_VERSION=first
BUILD_VERSION=1

. "$SCRIPT_DIR/install-variables-mpfs-fpga.sh"
. "$SCRIPT_DIR/install-command.sh"
