# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Variables Setup
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
# Notes:             Script used to expose variables to system
#
# Revision:          Last change: 07/2017 by SR :: Initial variables file list
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
# VARIABLES DEFINITION
# ------------------------------------------------------------------------------

# @const string CWD - current working directory
CWD=${DOT_DOTFILES}/@os/@common/bin

# ------------------------------------------------------------------------------
# Load Binary initializations
# ------------------------------------------------------------------------------
for bin in ${CWD}/bin.d/*; do
    source $bin
done

# ------------------------------------------------------------------------------
# VARIABLES UNLOADING
# ------------------------------------------------------------------------------
unset CWD
