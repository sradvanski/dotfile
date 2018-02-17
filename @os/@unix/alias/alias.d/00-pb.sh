# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Add pbcopy and pbpaste
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
# Notes:             Define aliases used to copy and paste public key
#
# Revision:          Last change: 07/2017 by SR :: first version of alias
#
# ==============================================================================

# ==============================================================================
# ALIASES
# ==============================================================================
if [[ $(command -v xsel) ]]; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi
