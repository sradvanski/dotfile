#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           Direnv Install
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to setup direnv and enable system wide
#
# Revision:          Last change: 15/08//2017 by SR :: Direnv inital setup
#
# ==============================================================================
set -o errexit
set -o nounset
set -o pipefail
set -e

# ==============================================================================
# VARIABLE DEFINITIONS
# ==============================================================================

# ------------------------------------------------------------------------------
# ROCKER INSTALL
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# CONSTANTS
# ------------------------------------------------------------------------------

# @var string PYENV_REPO - pyenv repository
# @var string PYENV_VIRTUALENV_REPO - pyenv virtualenvironment repo
# @var string PYENV_VIRTUAL_WRAPPER_REPO - python virtual wrapper repository
# @var string PYENV_HOME - pyenv home
# @var string PYENV_PLUGINS - pyenv plugins home
PYENV_REPO="https://github.com/pyenv/pyenv.git"
PYENV_VIRTUALENV_REPO="https://github.com/pyenv/pyenv-virtualenv.git"
PYENV_VIRTUAL_WRAPPER_REPO="https://github.com/pyenv/pyenv-virtualenvwrapper.git"
PYENV_HOME=${DOT_HOME}/.pyenv
PYENV_PLUGINS=${PYENV_HOME}/plugins

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# SETUP PYENV
# ------------------------------------------------------------------------------
if [[ $(command -v git) ]]; then

    # --------------------------------------------------------------------------
    # REMOVE PREVIOUS VERSION
    # --------------------------------------------------------------------------
    if [[ -d ${PYENV_HOME} ]]; then
        rm -rf ${PYENV_HOME}
    fi

    # --------------------------------------------------------------------------
    # INSTALL LATEST VERSION
    # --------------------------------------------------------------------------
    git clone --depth=1 ${PYENV_REPO} ${PYENV_HOME}

    git clone --depth=1 ${PYENV_VIRTUALENV_REPO} \
        ${PYENV_PLUGINS}/pyenv-virtualenv

    git clone --depth=1 ${PYENV_VIRTUAL_WRAPPER_REPO} \
        ${PYENV_PLUGINS}/pyenv-virtualenvwrapper

    #chown -R ${VM_USER}:${VM_USER} ${PYENV_HOME}

else

    echo "Install GIT on your system." >&2
    exit 1

fi

# ------------------------------------------------------------------------------
# ROCKER INSTALL
# ------------------------------------------------------------------------------
unset PYENV_REPO
unset PYENV_HOME
