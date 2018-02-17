#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           jabba Install
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to setup jabba in user space
#
# Revision:          Last change: 15/08//2017 by SR :: jabba initial setup
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
# CONSTANTS
# ------------------------------------------------------------------------------

# @var string JABBA_INSTALL - jabba install script path
JABBA_INSTALL="https://github.com/shyiko/jabba/raw/master/install.sh"

# ------------------------------------------------------------------------------
# EXPORTS
# ------------------------------------------------------------------------------

# @var string JABBA_HOME - install location of jabba
export JABBA_HOME=${DOT_HOME}/.jabba

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# JABBA INSTALL
# ------------------------------------------------------------------------------
if [[ $(command -v curl) ]]; then

    if [[ -d ${JABBA_HOME} ]]; then
        rm -rf ${JABBA_HOME}
    fi

    curl -sL ${JABBA_INSTALL} | /bin/bash
    source ${JABBA_HOME}/jabba.sh

    #chown -R ${VM_USER}:${VM_USER} ${JABBA_HOME}

else
    echo "Curl not found." >&2
    exit 1
fi

# ------------------------------------------------------------------------------
# UNLOAD VARIABLES
# ------------------------------------------------------------------------------
unset JABBA_INSTALL
unset JABBA_HOME
