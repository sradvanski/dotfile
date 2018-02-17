# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           jabba activaion for system
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
# Notes:             Activate Jabba so that we can run it correcly
#                    in our environment
#
# Revision:          Last change: 06/2017 by SR :: Initialize jabba
#
# ==============================================================================

# ==============================================================================
# VARIABLES DEFINITIONS
# ==============================================================================

# @var string JABBA_DIR - jabba directory
JABBA_DIR=${HOME}/.jabba

# ==============================================================================
# JABBA SETUP
# ==============================================================================
if [[ -d ${JABBA_DIR} ]]; then
    [ -s "${HOME}/.jabba/jabba.sh" ] && source "${HOME}/.jabba/jabba.sh"
fi

# ==============================================================================
# VARIABLE UNLOADING
# ==============================================================================
unset JABBA_DIR
