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
