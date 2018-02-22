#!/usr/bin/env bash
# -*- mode: sh; -*-
#
# ==============================================================================
#
# Purpose:           Brew Aliases
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
# Notes:             Ensure that we have shorthand commands used for homebrew
#
# Revision:          Last change: 07/2017 by SR :: SSH key generator
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# ------------------------------------------------------------------------------
# HOMEBREW
# ------------------------------------------------------------------------------
alias brewu="brew update && brew upgrade && brew cleanup"
alias brewi="brew install $@"
alias brewd="brew doctor"
alias brewci="brew cask install $@"
