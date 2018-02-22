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
# @var string PACKAGE_INSTALL - package manager detecttion
CWD="$(cd "$(readlink -f $(dirname "$0") )" && pwd -P)"
PACKAGE_INSTALL=$(detectPackageManager)

# ==============================================================================
# EXECUTION
# ==============================================================================
case ${PACKAGE_INSTALL} in

    "centos" )
        [[ -s ${CWD}/Centosfile ]] && sudo yum install $(< ${CWD}/Centosfile)
    ;;

    "debian" )
        [[ -s ${CWD}/Debianfile ]] && \
            sudo apt-get -y --no-install-recommends install $(< ${CWD}/Debianfile)
    ;;

    *)
        echo "No packages were installed."
        exit 0
        ;;

esac

