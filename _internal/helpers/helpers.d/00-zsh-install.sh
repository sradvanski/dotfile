#!/usr/bin/env bash
# -*- Mode: sh -*-
# vi: set ft=sh :
#
#
# ==============================================================================
#
# Purpose:           Install ZSH
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
# Notes:             Script used in order to install ZSH from source on unix
#                    systems for user boosted productivity
#
# Revision:          Last change: 02/2018 by SR :: Helper Installation
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

# @var string ZSH_URL - source download URL
# @var string ZSH_VERSION - version of source
# @var string CWD - current working directory
ZSH_VERSION="zsh-5.4.2"
ZSH_URL="http://www.zsh.org/pub/${ZSH_VERSION}.tar.gz"
CWD=/tmp


# ==============================================================================
# EXECUTION
# ==============================================================================
if [[ ! $(command -v zsh) ]]; then

    # --------------------------------------------------------------------------
    # DOWNLOAD SOURCES
    # --------------------------------------------------------------------------
    cd ${CWD}
    curl -L ${ZSH_URL} -o "${ZSH_VERSION}.tar.gz"
    tar xvzf "${ZSH_VERSION}.tar.gz"

    # --------------------------------------------------------------------------
    # INSTALL
    # --------------------------------------------------------------------------
    cd ${ZSH_VERSION}

    if [[ -f ./configure ]]; then
        sudo ./configure
    fi

    if [[ $(command -v make) ]]; then
        sudo make && sudo make install
    fi

    sudo ln -sf /usr/local/bin/zsh /bin/zsh

    sudo echo "/usr/local/bin/zsh" >> /etc/shells
    sudo echo "/bin/zsh" >> /etc/shells

    # --------------------------------------------------------------------------
    # CLEANUP
    # --------------------------------------------------------------------------
    cd ${CWD}
    rm -rf ${ZSH_VERSION} "${ZSH_VERSION}.tar.gz"

fi

# ------------------------------------------------------------------------------
# UNREGISTER
# ------------------------------------------------------------------------------
unset CWD
