# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           ssh agent session startup
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
# Notes:             Ensure that our ssh agent is up and running and that
#                    we can start using all of our keys
#
# Revision:          Last change: 06/2017 by SR :: Initialize ssh agent
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# @const string SSH_STARTUP - main startupfile
readonly SSH_STARTUP="${HOME}/.ssh-agent-startup"

# ==============================================================================
# SSH-AGENT STARTUP
# ==============================================================================

if [[ $(command -v ssh-agent) ]]; then

    if ! pgrep -u "$USER" ssh-agent > /dev/null; then
        eval $(ssh-agent -s) > /dev/null
    fi

fi

# check if we are running ssh agent and
# generate configuration
#if [[ ! -f $SSH_STARTUP ]]; then
#
#    if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#        ssh-agent > ~/.ssh-agent-startup
#    fi
#
#fi

# start ssh agent
#if [[ "$SSH_AGENT_PID" == "" ]]; then
#    eval "$(<~/.ssh-agent-startup)" > /dev/null
#fi
