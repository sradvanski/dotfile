#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
#
# ==============================================================================
#
# Purpose:           Tools Installation
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
# Notes:             Script used to install all required tools
#
# Revision:          Last change: 01/2018 by SR :: Tools Installation
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
# VARIABLE DEFINITIONS
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# VARIABLE DEFINITIONS
# ------------------------------------------------------------------------------

# @var string CWD - current working directory
CWD="$(cd "$(readlink -f $(dirname "$0") )" && pwd -P)"

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES SOURCING
# ------------------------------------------------------------------------------
for tools in ${CWD}/tools.d/*; do
    source ${tools}
done

# ------------------------------------------------------------------------------
# VARIABLES UNLOADING
# ------------------------------------------------------------------------------
unset CWD
