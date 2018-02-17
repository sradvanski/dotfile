#!/usr/bin/env zsh
# -*- Mode: bash -*-
# vi: set ft=bash :
#
#
# ==============================================================================
#
# Purpose:           Application Install
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) sourced
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Script used to install all required applications
#
# Revision:          Last change: 01/2018 by SR :: Inital configuration
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh
source ${HOME}/.zshrc

# ------------------------------------------------------------------------------
# VARIABLES
# ------------------------------------------------------------------------------

# @const string CWD - current working directory
CWD=${DOT_DOTFILES}/_internal/install/install.d/00-brew

# ==============================================================================
# EXECUTION
# ==============================================================================
if [[ $(command -v brew) ]]; then

    if [[ -s "${CWD}/Brewfile" ]]; then
        brew install $(< ${CWD}/Brewfile)
    fi

fi

# ------------------------------------------------------------------------------
# CONFIGURE VM
# ------------------------------------------------------------------------------
unset CWD
