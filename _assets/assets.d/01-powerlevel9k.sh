#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
#
# ==============================================================================
#
# Purpose:           Setup powerlevel9k
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
# Notes:             Script used to install powerlevel9k promp theme
#                    fo better productivuity boost
#
# Revision:          Last change: 01/2018 by SR :: Powerlevel9k Install
#
# ==============================================================================
set -o errexit
set -o pipefail
set -o nounset
set -e

# ==============================================================================
# VARIABLES
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLE DEFINITIONS
# ------------------------------------------------------------------------------

# @var string THEME_DIR - current working directory
# @var string ZIM_EXTERNAL_THEME - external tehmes
# @var string POWERLEVEL9K_URL - download url for powerlevel
THEME_DIR=${DOT_DOTFILES}/@vendor/zim/modules/prompt
ZIM_EXTERNAL_THEME=${THEME_DIR}/external-themes/powerlevel9k
POWERLEVEL9K_URL="https://github.com/bhilburn/powerlevel9k.git"

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES SOURCING
# ------------------------------------------------------------------------------
if [[ -d ${THEME_DIR} ]]; then

    # --------------------------------------------------------------------------
    # Install Theme
    # --------------------------------------------------------------------------
    if [[ $(command -v git) ]]; then

        git clone --depth=1 ${POWERLEVEL9K_URL} ${ZIM_EXTERNAL_THEME}

        ln -sf ${ZIM_EXTERNAL_THEME}/powerlevel9k.zsh-theme \
           ${THEME_DIR}/functions/prompt_powerlevel9k_setup

    else
        echo "'git' was not fond on system." >&2
        exit 1
    fi

fi

# ------------------------------------------------------------------------------
# VARIABLES UNLOADING
# ------------------------------------------------------------------------------
unset CWD
