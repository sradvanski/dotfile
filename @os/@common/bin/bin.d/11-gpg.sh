# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           gpg agent
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
# Notes:             Create a gpg agent script that is being used for managing
#                    ssh connections to servers
#
# Revision:          Last change: 06/2017 by SR :: Initialize gpg agent
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# @const GPG_SOCKET_AUTH - socket authentication
readonly GPG_SOCKET_AUTH="/run/user/$UID/gnupg/S.gpg-agent.ssh"

# ==============================================================================
# SSH-AGENT STARTUP
# ==============================================================================
if ! pgrep -u "$USER" ssh-agent > /dev/null; then

    unset SSH_AGENT_PID

    if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
        export SSH_AUTH_SOCK="${GPG_SOCKET_AUTH}"
    fi
fi
