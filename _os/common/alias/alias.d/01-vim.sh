# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Alias VI editor
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
# Notes:             Alias VI editor as vim fo easier usage
#
# Revision:          Last change: 07/2017 by SR :: first version of alias
#
# ==============================================================================

# ==============================================================================
# ALIASES
# ==============================================================================
if [[ $(command -v vim) ]]; then
    alias vi='vim'
fi
