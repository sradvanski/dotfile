#!/usr/bin/env bash
# -*- Mode: sh -*-
# vi: set ft=sh :
#
#
# ==============================================================================
#
# Purpose:           Install OS packages
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
# Notes:             Script used to ensure that required packages
#
# Revision:          Last change: 02/2018 by SR :: ZSH setup
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
CWD=${DOT_DOTFILES}/_internal/helpers

# ==============================================================================
# EXECUTION
# ==============================================================================
case ${OS_NAME} in
    "centos")
        echo "Cent OS" ;;
    "")
        echo "Debian" ;;
    *)
        echo "Package manager not found..."
esac

