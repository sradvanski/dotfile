# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           History setup
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
# Notes:             Script used to configure our history file
#
# Revision:          Last change: 07/2017 by SR :: Histroy variables
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

# ==============================================================================
# VARIABLES
# ==============================================================================

# @TODO: Make sure to add this to provisioning
#shopt -s histappend ;
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTSIZE=999999
export HISTFILESIZE=999999