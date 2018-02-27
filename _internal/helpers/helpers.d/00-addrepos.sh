#!/usr/bin/env bash
# -*- Mode: sh -*-
# vi: set ft=sh :
#
#
# ==============================================================================
#
# Purpose:           Install ZSH
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
# Notes:             Script used in order to install ZSH from source on unix
#                    systems for user boosted productivity
#
# Revision:          Last change: 02/2018 by SR :: Helper Installation
#
# ==============================================================================
set -o errexit
set -o nounset
set -o pipefail
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

# @var string SYSTEM - current system
# @var string[] DEBIAN_REPOS - repositories required in debian
SYSTEM=$(detectPackageManager)
DEBIAN_REPOS=("test one")

# ==============================================================================
# FUNCTIONS
# ==============================================================================

# ------------------------------------------------------------------------------
# DEBIAN PACKAGES
# ------------------------------------------------------------------------------

# @public
#
# @function setupDebianRepos
#
# @desc method used to ensure that reposiories are
# added to our device and that we can use them
#
# @param void - method doesnt take any param
#
# @return void - method has no return values
setupDebianRepos () {

    # --------------------------------------------------------------------------
    # VARIABLES
    # --------------------------------------------------------------------------

    # @var string[] repos - list of repositories
    # @var string sourceList - directory for sources
    declare -A repos=(
        ["apt.gpg"]="https://packages.sury.org/php"
    )
    local sourcesList=/etc/apt/sources.list
    local relese=$(lsb_release -sc)

    # --------------------------------------------------------------------------
    # ADD SOURCES
    # --------------------------------------------------------------------------
    if [[ $(command -v apt-key) ]]; then

        for key in "${!repos[@]}"; do

            # ensure that we add gpg key
            curl  "${repos[$key]}/${key}" | sudo apt-key add - &>/dev/null

            # add it to our stuff
            echo "deb ${repos[$key]} ${relese}  main" | \
                sudo tee --append ${sourcesList}

        done

    fi

    # --------------------------------------------------------------------------
    # System Update
    # --------------------------------------------------------------------------
    if [[ $(command -v apt-get) ]]; then
        sudo apt-get update -y
    fi

    # --------------------------------------------------------------------------
    # CLEANUP
    # --------------------------------------------------------------------------
    unset sourcesList
    unset repos
    unset release
}

# ------------------------------------------------------------------------------
# DEBIAN PACKAGES
# ------------------------------------------------------------------------------

# @public
#
# @function setupDebianRepos
#
# @desc method used to ensure that reposiories are
# added to our device and that we can use them
#
# @param void - method doesnt take any param
#
# @return void - method has no return values
setupCentOSRepos () {

    # --------------------------------------------------------------------------
    # VARIABLES
    # --------------------------------------------------------------------------

    # @var string[] repos - list of repositories
    # @var string sourceList - directory for sources
    declare -A repos=(
        ["apt.gpg"]="https://packages.sury.org/php"
    )
    local sourcesList=/etc/apt/sources.list
    local relese=$(lsb_release -sc)

    # --------------------------------------------------------------------------
    # CLEANUP
    # --------------------------------------------------------------------------
    unset sourcesList
    unset repos
    unset release
}

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# ADDED NEW REPOS
# ------------------------------------------------------------------------------
case ${SYSTEM} in

    "centos" ) ;;
    "debian" )
        setupDebianRepos
        ;;
    *)
        echo "There is no repos to be added."
        exit 0
        ;;

esac


# ------------------------------------------------------------------------------
# UNREGISTER
# ------------------------------------------------------------------------------
unset CWD
unset DEBIAN_REPOS
