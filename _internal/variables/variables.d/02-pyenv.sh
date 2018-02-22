#!/usr/bin/env bash
# -*- mode: sh; -*-
#
# ==============================================================================
#
# Purpose:           PYENV variables
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
# Called From:       (script) sourcced
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Pyenv variables used for settings
#
# Revision:          Last change: 08/2017 by SR :: Initial variable set
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================
#
# Set terminal emulator variables

# @var string EDITOR - main editor
set +a

PYENV_VIRTUALENV_CACHE_PATH=${HOME}/.cache/pyenv

set -a
