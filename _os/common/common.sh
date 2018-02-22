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

# @const string COMMONCWD - current working directory
# @const string VARIABLES - variables init
# @const string BINARY - binary init
# @const string ALIAS - alias init
# @const string COMPLETIONS - alias init
#CWD="$( cd "$( dirname "$0" )" && pwd )"
CWD=${DOT_DOTFILES}/_os/common
VARIABLES="${CWD}/vars/variables.sh"
BINARY="${CWD}/bin/bin.sh"
ALIAS="${CWD}/alias/alias.sh"
COMPLETIONS="${CWD}/completions/completions.sh"

# ==============================================================================
# LOAD
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES
# ------------------------------------------------------------------------------
if [[ -s ${VARIABLES} ]]; then
    source ${VARIABLES}
fi

# ------------------------------------------------------------------------------
# BINARY
# ------------------------------------------------------------------------------
if [[ -s ${BINARY} ]]; then
    source ${BINARY}
fi

# ------------------------------------------------------------------------------
# ALIAS
# ------------------------------------------------------------------------------
if [[ -s ${ALIAS} ]]; then
    source ${ALIAS}
fi

# ------------------------------------------------------------------------------
# COMPLETIONS
# ------------------------------------------------------------------------------
if [[ -s ${COMPLETIONS} ]]; then
    source ${COMPLETIONS}
fi

# ------------------------------------------------------------------------------
# VARIABLES UNLOADING
# ------------------------------------------------------------------------------
unset CWD
unset VARIABLES
unset BINARY
unset ALIAS
unset COMPLETIONS
