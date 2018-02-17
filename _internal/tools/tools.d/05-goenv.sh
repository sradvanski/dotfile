#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           GOEnv Install
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to setup goenv for managining multiple
#                    go versions
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

# @var string GOENV_REPOSITORY - goenv repository
# @var string GOENV_DIR - goenv install directory
GOENV_REPOSITORY="https://github.com/syndbg/goenv.git"
GOENV_DIR=${DOT_HOME}/.goenv

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# SETUP GOENV
# ------------------------------------------------------------------------------
if [[ $(command -v git) ]]; then

    if [[ -d ${GOENV_DIR} ]]; then
        rm -rf ${GOENV_DIR}
    fi

    git clone --depth=1 -b master ${GOENV_REPOSITORY} ${GOENV_DIR}

    #chown -R ${VM_USER}:${VM_USER} ${GOENV_DIR}
else

    echo "Git was not found on system." >&2
    exit 1

fi

# ------------------------------------------------------------------------------
# VARIABLES UNLOAD
# ------------------------------------------------------------------------------
unset GOENV_REPOSITORY
unset GOENV_DIR
