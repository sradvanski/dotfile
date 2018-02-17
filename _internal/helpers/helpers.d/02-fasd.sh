#!/usr/bin/env bash
# -*- Mode: sh -*-
# vi: set ft=sh :
#
#
# ==============================================================================
#
# Purpose:           FASD Installation
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) sourced
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Script used to Install fasd productivity booster
#
# Revision:          Last change: 02/2018 by SR :: Fasd install
#
# ==============================================================================
set -o errexit
set -o nounset
set -o pipefail
set -e

# ==============================================================================
# VARIABLES
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLE DEFINITIONS
# ------------------------------------------------------------------------------

# @var string FASD_VERSION - fsd version install
# @var string FASD_URL - fasd source URL
# @var string CWD - current working directory
FASD_VERSION="1.0.1"
FASD_URL="https://github.com/clvv/fasd/archive/${FASD_VERSION}.tar.gz"
CWD=/tmp

# ==============================================================================
# EXECUTION
# ==============================================================================
if [[ ! $(command -v fasd) ]]; then

    # --------------------------------------------------------------------------
    # DOWNLOAD
    # --------------------------------------------------------------------------
    cd ${CWD}
    curl -L ${FASD_URL} -o "${FASD_VERSION}.tar.gz"
    tar xzvf "${FASD_VERSION}.tar.gz"

    # --------------------------------------------------------------------------
    # INSTALL
    # --------------------------------------------------------------------------
    cd "fasd-${FASD_VERSION}"
    sudo make install

    # --------------------------------------------------------------------------
    # CLEANUP
    # --------------------------------------------------------------------------
    cd ${CWD}
    rm -rf "${FASD_VERSION}.tar.gz" "fasd-${FASD_VERSION}"

fi

# ------------------------------------------------------------------------------
# VARIABLE DEFINITIONS
# ------------------------------------------------------------------------------
unset FASD_VERSION
unset FASD_URL
unset CWD
