#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           Linuxbrew Install
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to setup linuxbrew a user level package manager
#
# Revision:          Last change: 15/08//2017 by SR :: goenv inital setup
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
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLES DEFINITIONS
# ------------------------------------------------------------------------------

# @var string LINUXBREW_REPOSITORY - git repository
# @var string LINUXBREW_DIR - install directory
LINUXBREW_REPOSITORY="https://github.com/Linuxbrew/brew.git"
LINUXBREW_DIR=${DOT_HOME}/.linuxbrew

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# SETUP LINUXBREW
# ------------------------------------------------------------------------------
if [[ $(command -v git) ]]; then

    if [[ -d ${LINUXBREW_DIR} ]]; then
        rm -rf ${LINUXBREW_DIR}
    fi

    git clone --depth=1 -b master ${LINUXBREW_REPOSITORY} ${LINUXBREW_DIR}

    #chown -R ${VM_USER}:${VM_USER} ${LINUXBREW_DIR}
else
    echo "Git was not found on system." >&2
    exit 1
fi

# ------------------------------------------------------------------------------
# VARIABLES UNLOAD
# ------------------------------------------------------------------------------
unset LINUX_REPOSITORY
unset LINUX_DIR
