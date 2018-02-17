# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           tmuinator auto cmpletion
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Make sure that we source correct version of completions
#                    for shell that we are using
#
# Revision:          Last change: 06/2017 by SR :: Initialize tmuxinator completions
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# @const string $CURRENT_SHELL - sell that is used
# @const string $COMPLETiON_PATH - path to our completions scripts
readonly CURRENT_SHELL=$(basename ${SHELL})
readonly COMPLETION_PATH=~/.dotfiles/@vendor/completions/tmuxinator/tmuxinator.zsh

# ==============================================================================
# INITIALIZATION
# ==============================================================================
if [[ ${CURRENT_SHELL} == 'zsh' ]]; then
    source ${COMPLETION_PATH}
fi
