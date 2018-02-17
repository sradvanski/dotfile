#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           NVM Setup
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to setup NVM (node version manager)
#
# Revision:          Last change: 15/08//2017 by SR :: nvm inital setup
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

# @var string NVM_REPOSITORY - repository of nvm
# @var string NVM_DIR - install location of nvm
NVM_REPOSITORY="https://github.com/creationix/nvm.git"
NVM_DIR=${DOT_HOME}/.nvm

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# SETUP NVM
# ------------------------------------------------------------------------------
if [[ $(command -v git) ]]; then

    if [[ -d ${NVM_DIR} ]]; then
        rm -rf ${NVM_DIR}
    fi

    git clone --depth=1 -b master ${NVM_REPOSITORY} ${NVM_DIR}

    #chown -R ${VM_USER}:${VM_USER} ${NVM_DIR}
else
    echo "Ensure that git is installed." >&2
    exit 1
fi

# ------------------------------------------------------------------------------
# VARIABLES DESTROY
# ------------------------------------------------------------------------------
unset NVM_REPOSITORY
unset NVM_DIR
