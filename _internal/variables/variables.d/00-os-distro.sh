#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           Setup dotfiles
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Main installation script
#
# Revision:          Last change: 06/2017 by SR :: package list
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# @var string OS_TYPE - type of os
# @var string OS_NAME - name of os
OS_TYPE=$(uname)
OS_NAME=$(cat /etc/*-release | grep -m 1 "ID=" | cut -d "=" -f 2)

# ------------------------------------------------------------------------------
# FUNCTIONS
# ------------------------------------------------------------------------------

# @function detectPackageManager
#
# @description Method used to determine whihc package manage
# should be used by current installation
#
# @param void - method doesn't accpet any params
#
# @return string - returns current os
detectPackageManager () {
    case $(uname) in
        Linux )
            [[ $(which yum) ]] && { echo centos; return; }
            [[ $(which apt-get) ]] && { echo debian; return; }
            [[ $(which pacman) ]] && { echo arch; return; }
            ;;
    esac
}
