# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Unix config Setup
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
# Notes:             Script used to setup all unix required stuff
#
# Revision:          Last change: 07/2017 by SR :: Initial unix bootstrap
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
# @const string UNIX_BIN_PATH - unix binary configuration
# @const string UNIX_ALIAS_PATH - unix alias configuration
#CWD="$( cd "$( dirname "$0" )" && pwd )"
CWD=${DOT_DOTFILES}/_os/unix
UNIX_BIN_PATH="${CWD}/bin/bin.sh"
UNIX_ALIAS_PATH="${CWD}/alias/alias.sh"

# ==============================================================================
# LOAD
# ==============================================================================

# ------------------------------------------------------------------------------
# PATH CONFIGURATION
# ------------------------------------------------------------------------------
if [[ -s ${UNIX_BIN_PATH} ]]; then
    source ${UNIX_BIN_PATH}
fi

if [[ -s ${UNIX_ALIAS_PATH} ]]; then
    source ${UNIX_ALIAS_PATH}
fi

# ------------------------------------------------------------------------------
# PATH CONFIGURATION
# ------------------------------------------------------------------------------
unset CWD
unset UNIX_BIN_PATH
unset UNIX_ALIAS_PATH
