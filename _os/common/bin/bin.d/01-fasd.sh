# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           fasd init
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
# Notes:             Fasd initialization process
#
# Revision:          Last change: 06/2017 by SR :: Initialize fasd
#
# ==============================================================================

# ==============================================================================
# VARIABLE
# ==============================================================================
#
# Variable definition

# @const string fasd_cache - cache directory
fasd_cache=$HOME/.fasd-init-bash

# ==============================================================================
# HUB SETUP
# ==============================================================================

# ------------------------------------------------------------------------------
# SOURCE
# ------------------------------------------------------------------------------
if [[ $(command -v fasd) ]]; then

    if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
        fasd --init posix-alias \
             zsh-hook \
             zsh-ccomp \
             zsh-ccomp-install \
             zsh-wcomp \
             zsh-wcomp-install >| "$fasd_cache"
    fi

    # --------------------------------------------------------------------------
    # SOURCE / UNSET
    # --------------------------------------------------------------------------
    source "$fasd_cache"

fi

# ==============================================================================
# VARIABLE UNLOADING
# ==============================================================================
unset fasd_cache
