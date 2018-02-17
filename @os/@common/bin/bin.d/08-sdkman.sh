# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           sdkman activaion for system
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
# Notes:             Activate sdkman so that we can easily manage different
#                    development frameworks
#
# Revision:          Last change: 06/2017 by SR :: Initialize sdkman
#
# ==============================================================================

# ==============================================================================
# SDKMAN SETUP
# ==============================================================================
if [[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]]; then
    source "${HOME}/.sdkman/bin/sdkman-init.sh"
fi
