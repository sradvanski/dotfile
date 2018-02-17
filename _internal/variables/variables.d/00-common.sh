#!/usr/bin/env bash
# -*- Mode: sh -*-
# vi: set ft=sh :
#
# ==============================================================================
#
# Purpose:           Common variables list
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) sourced
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script providing common environment variables
#
# Revision:          Last change: 15/08//2017 by SR :: Init variable list
#
# ==============================================================================

# ==============================================================================
# CONSTANTS / VARIABLES
# ==============================================================================

# @const string DOT_USER - vm user
# @const string DOT_HOME - user home directory
# @const string DOT_BIN - users executable path
# @const string DOT_CONFIG - configuration directory
# @const string DOT_ENV - environment directory
# @const string DOT_DOTFILES - default user dotfiles
DOT_USER=vagrant
DOT_HOME=/home/${DOT_USER}
DOT_BIN=/usr/local/bin
DOT_DOTFILES=${DOT_HOME}/.dotfiles
