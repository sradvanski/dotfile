#!/usr/bin/env bash
# -*- Mode: sh -*-
# vi: set ft=sh :
#
#
# ==============================================================================
#
# Purpose:           Install Dependency
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
# Notes:             Script that installs required dependencies that we need
#                    for correct workflow in CLI environments
#
# Revision:          Last change: 01/2018 by SR :: Installs dependencies
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

# @var string CWD - current working directory
# @var string bin - binray executable
CWD=${DOT_DOTFILES}/_internal/install
bin=$(which zsh)

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# INSTALL APPLICATIONS
# ------------------------------------------------------------------------------
for install in ${CWD}/install.d/*; do

    if [[ -d ${install} ]]; then
        $bin ${install}/install.sh
    else
        $bin $install
    fi

done

# ------------------------------------------------------------------------------
# UNREGISTER
# ------------------------------------------------------------------------------
unset CWD
unset bin
