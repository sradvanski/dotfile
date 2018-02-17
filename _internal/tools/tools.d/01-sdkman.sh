#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           Direnv Install
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to setup direnv and enable system wide
#
# Revision:          Last change: 15/08//2017 by SR :: Direnv inital setup
#
# ==============================================================================
set -o errexit
set -o nounset
set -o pipefail
set -e

# ==============================================================================
# VARIABLE DEFINITIONS
# ==============================================================================

# ------------------------------------------------------------------------------
# ROCKER INSTALL
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLES
# ------------------------------------------------------------------------------

# @var string SDK_MAN_DIR - install directory
SDK_MAN_DIR=${DOT_HOME}/.sdkman
SDK_MAN_URL="https://get.sdkman.io"

# ==============================================================================
# EXECUTION
# ==============================================================================
if [[ $(command -v curl) ]]; then

    export SDKMAN_DIR=${SDK_MAN_DIR}
    curl -sL ${SDK_MAN_URL} | bash

    # chown -R ${DOT_USER}:${VM_USER} ${SDK_MAN_DIR}
else

    echo "Ensure that CURL is present on the system" >&2
    exit 1

fi

# ------------------------------------------------------------------------------
# ROCKER INSTALL
# ------------------------------------------------------------------------------
unset SDK_MAN_DIR
unset SDK_MAN_URL
unset SDKMAN_DIR
