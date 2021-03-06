#!/usr/bin/env bash
# -*- mode: sh; -*-
#
# ==============================================================================
#
# Purpose:           PHPBrew Configuration
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
# Notes:             PHPBrew initialization for usage
#
# Revision:          Last change: 06/2017 by SR :: Initialize gpg agent
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# @const string PHPBREW_DIR - directory where php brew is installed
readonly PHPBREW_DIR=${HOME}/.phpbrew

# ==============================================================================
# SSH-AGENT STARTUP
# ==============================================================================
if [[ $(command -v phpbrew) ]]; then

    # --------------------------------------------------------------------------
    # PHPBREW INIT
    # --------------------------------------------------------------------------
    if [[ ! -d ${PHPBREW_DIR} ]]; then
        phpbrew init
    fi

    # --------------------------------------------------------------------------
    # PHPBREW CONFIG
    # --------------------------------------------------------------------------
    if [[ -e ${PHPBREW_DIR}/bashrc ]]; then
        source ${PHPBREW_DIR}/bashrc
    fi

fi
