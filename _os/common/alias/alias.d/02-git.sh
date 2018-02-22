# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           git aliases
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
# Notes:             Replace cli command of git with hub amd continue using
#                    git as usual
#
# Revision:          Last change: 07/2017 by SR :: gi aliases settings
#
# ==============================================================================

# ==============================================================================
# ALIASES
# ==============================================================================

# replace git with hub only if hub is installed
if [[ $(command -v hub) ]]; then
    alias git="hub"
fi
