# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Tmux session startup
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
# Notes:             Ensure that we start tmux our app
#
# Revision:          Last change: 06/2017 by SR :: Initialize tmux
#
# ==============================================================================

# ==============================================================================
# TMUX STARTUP
# ==============================================================================
if [[ $(command -v tmux) ]]; then

    if [[ -z "$TMUX" ]]  && [[ "$SSH_CONNECTION" != "" ]]; then

        base_session=$(whoami)

        # Create a new session if it doesn't exist
        tmux has-session -t $base_session || tmux new-session -d -s $base_session

        # Are there any clients connected already?
        client_cnt=$(tmux list-clients | wc -l)

        # create a correct session management for tmux
        if [ $client_cnt -ge 1 ]; then
            session_name=$base_session"-"$client_cnt
            tmux new-session -d -t $base_session -s $session_name
            tmux -2 attach-session -t $session_name \; set-option destroy-unattached && exit;
        else
            tmux -2 attach-session -t $base_session && exit;
        fi

    fi
 
fi
