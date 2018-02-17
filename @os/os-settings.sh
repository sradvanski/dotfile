#!/usr/bin/env bash
#
# ==============================================================================
#
# Purpose:           Setup user variables
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
# Notes:             Script used to setup unix specific configurations
#
# Revision:          Last change: 06/2017 by SR :: Initial unix condiguration
#
# ==============================================================================

# ==============================================================================
# VARIABLES SETUP
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLES EXPORTS
# ------------------------------------------------------------------------------

# @const string GOENV_ROOT - goenv root install
# @const string NVM_DIR - nvm install dir
# @const string PYENV_ROOT - pyenv root
export GOENV_ROOT="${DOT_HOME}/.goenv"
export NVM_DIR="${DOT_HOME}/.nvm"
export PYENV_ROOT="${DOT_HOME}/.pyenv"
export SDKMAN_DIR="${DOT_HOME}/.sdkman"

# ------------------------------------------------------------------------------
# PATHMODS
# ------------------------------------------------------------------------------
export PATH="${DOT_HOME}/.linuxbrew/bin:${GOENV_ROOT}/bin:${GOENV_ROOT}/shims:${PYENV_ROOT}/bin:${DOT_HOME}/.rbenv/bin:${DOT_HOME}/.rbenv/shims:$PATH"

# ensure that we set bre man path
if [[ $(command -v brew) ]]; then
    export MANPATH="$(brew --prefix)/share/man:$MANPATH"
    export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"
fi


# ==============================================================================
# ENVIRONMENT
# ==============================================================================

# ------------------------------------------------------------------------------
# COMMON VARIABLES
# ------------------------------------------------------------------------------
if [[ -s ${DOT_DOTFILES}/@os/@common/common.sh ]]; then
    source ${DOT_DOTFILES}/@os/@common/common.sh
fi

# ------------------------------------------------------------------------------
# LOAD UNIX VARIABLES
# ------------------------------------------------------------------------------
if [[ ${OS_TYPE} == "Linux" ]]; then

    if [[ -s ${DOT_DOTFILES}/@os/@unix/unix.sh ]]; then
        source ${DOT_DOTFILES}/@os/@unix/unix.sh
    fi

fi
