# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           direnv init
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
# Notes:             Direnv initialize so we can use it in our environment
#
# Revision:          Last change: 06/2017 by SR :: Initialize direnv
#
# ==============================================================================

# ==============================================================================
# INITIALIZATION
# ==============================================================================
if [[ $(command -v direnv) ]]; then
    eval "$(direnv hook zsh)"
fi
