#!/usr/bin/env zsh
# -*- Mode: bash -*-
# vi: set ft=bash :
#
#
# ==============================================================================
#
# Purpose:           Java Installs
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) sourced
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Script used to install java versions
#
# Revision:          Last change: 01/2018 by SR :: Java installations
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLES
# ------------------------------------------------------------------------------

# @var string[] JAVA_VERSIONS - java versions
JAVA_VERSIONS=(1.9.0)

# ==============================================================================
# EXECUTION
# ==============================================================================
if [[ $(command -v jabba) ]]; then

    # --------------------------------------------------------------------------
    # Install JAVA versions
    # --------------------------------------------------------------------------
    for version in $JAVA_VERSIONS; do
        jabba install ${version}
    done

    # --------------------------------------------------------------------------
    # Set use version
    # --------------------------------------------------------------------------
    jabba use ${JAVA_VERSIONS[0]}
fi

# ------------------------------------------------------------------------------
# CONFIGURE VM
# ------------------------------------------------------------------------------
unset JAVA_VERSIONS
