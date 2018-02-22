#!/usr/bin/env bash
# -*- mode: sh; -*-
#
# ==============================================================================
#
# Purpose:           PHPbrew install process
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Script used to setup PHPBrew that will allow us to ensure that
#                    can manage multiple versions of php and its extension managers
#
# Revision:          Last change: 06/2017 by SR :: Added initial install process
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
# VARIABLE DEFINITIONS
# ------------------------------------------------------------------------------

# @const string PHPBREW_URL - download link
# @const string PHPBREW_DIR - install dir
# @const string CWD - currnt working director
PHPBREW_URL="https://github.com/phpbrew/phpbrew/raw/master/phpbrew"
PHPBREW_DIR=/usr/local/bin
CWD=/tmp

# ==============================================================================
# INSTALL LINUXBREW
# ==============================================================================
if [[ $(command -v curl) ]]; then

    # --------------------------------------------------------------------------
    # INSTALL PHPBREW
    # --------------------------------------------------------------------------
    cd ${CWD}

    curl -LO ${PHPBREW_URL}
    sudo mv phpbrew ${PHPBREW_DIR}
    sudo chmod +x ${PHPBREW_DIR}/phpbrew

else

    # --------------------------------------------------------------------------
    # PROMPT USER THAT THIS IS NOT SUPPORTED PLATFORM
    # --------------------------------------------------------------------------
    echo "Installer runs only on Arch Based Distros" >&2
    exit 1
fi

# ------------------------------------------------------------------------------
# VARIABLE DEFINITIONS
# ------------------------------------------------------------------------------
unset PHPBREW_URL
unset PHPBREW_DIR
unset CWD
