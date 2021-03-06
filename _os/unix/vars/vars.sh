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

# @const string PATHCWD - current working directory
CWD=${DOT_DOTFILES}/_os/unix/vars

# ------------------------------------------------------------------------------
# SANITY CHECK
# ------------------------------------------------------------------------------
for variable in ${CWD}/vars.d/*; do
    source $variable
done

# ------------------------------------------------------------------------------
# VARIABLES UNLOADING
# ------------------------------------------------------------------------------
unset variabl
unset CWD
