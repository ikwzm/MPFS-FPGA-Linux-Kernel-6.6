#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
REPO_DIR=$(cd $(dirname $0); cd .. ; pwd)
KERNEL_VERSION=6.6.51-mpfs-fpga
LOCAL_VERSION=trial
BUILD_VERSION=2

. "$SCRIPT_DIR/install-variables-mpfs-fpga.sh"
. "$SCRIPT_DIR/install-command.sh"
