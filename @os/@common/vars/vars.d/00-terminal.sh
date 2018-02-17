# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Terminal application variables
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
# Called From:       (script) sourcced
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Terminal variables set on user login
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
# @var string TERM - define terminal
set +a

EDITOR=/usr/bin/vim
TERM="xterm-256color"

set -a
