#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           rbenv Install
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to setup Rbenv ruby version manager
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

# @var string RBENV_REPOSITORY - git repo of rbenv
# @var string RBENV_BUILD_REPOSITORY - rebenv bluild plugin git repositry
# @var string RBENV_GEMSETS_REPOSITORY - rbenv gemset plugin
# @var string RBENV_DIR = rbenv install directory
# @var string RBENV_PLUGINS - rebenv plugins install directory
RBENV_REPOSITORY="https://github.com/rbenv/rbenv.git"
RBENV_BUILD_REPOSITORY="https://github.com/rbenv/ruby-build.git"
RBENV_GEMSETS_REPOSIORY="https://github.com/jf/rbenv-gemset.git"
RBENV_DIR=${DOT_HOME}/.rbenv
RBENV_PLUGINS=${RBENV_DIR}/plugins

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# SETUP
# ------------------------------------------------------------------------------
if [[ $(command -v git) ]]; then

    if [[ -d ${RBENV_DIR} ]]; then
        rm -rf ${RBENV_DIR}
    fi

    git clone --depth=1 ${RBENV_REPOSITORY} ${RBENV_DIR}
    git clone --depth=1 ${RBENV_BUILD_REPOSITORY} ${RBENV_PLUGINS}/ruby-build
    git clone --depth=1 ${RBENV_GEMSETS_REPOSIORY} ${RBENV_PLUGINS}/rbenv-gemset

else
    echo "Git command was not foudn on system." >&2
    exit 1
fi

# ------------------------------------------------------------------------------
# VARIABLES UNLOAD
# ------------------------------------------------------------------------------
unset RBENV_REPOSITORY
unset RBENV_BUILD_REPOSITORY
unset RBENV_DIR
unset RBENV_PLUGINS
