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
# Notes:             Ensure that we completions for different types of required
#                    utilities that are not provided by default when installing
#
# Revision:          Last change: 07/2017 by SR :: Initial completions
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
#CWD="$( cd "$( dirname $0 )" && pwd )"
CWD=${DOT_DOTFILES}/_os/common/completions

# ------------------------------------------------------------------------------
# SANITY CHECK
# ------------------------------------------------------------------------------
for completion in ${CWD}/completions.d/*; do
    source $completion
done

# ------------------------------------------------------------------------------
# VARIABLES UNLOADING
# ------------------------------------------------------------------------------
unset CWD

