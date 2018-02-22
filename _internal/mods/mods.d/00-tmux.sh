#!/usr/bin/env bash
# -*- Mode: bash -*-
# vi: set ft=bash :
#
# ==============================================================================
#
# Purpose:           Modify Tmux Configuration
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to ensure all plugins are added to tmux
#
# Revision:          Last change: 15/08//2017 by SR :: tmux config
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
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLES DEFINITIONS
# ------------------------------------------------------------------------------

# @var string TMUX_CONFIG_FILE - users tmux configuration
TMUX_CONFIG_FILE=${DOT_DOTFILES}/_vendor/tmux/.tmux.conf

# ==============================================================================
# EXECUTION
# ==============================================================================

# ------------------------------------------------------------------------------
# SETUP LINUXBREW
# ------------------------------------------------------------------------------
if [[ $(command -v tmux) ]] && [[ -f $TMUX_CONFIG_FILE ]]; then

    # --------------------------------------------------------------------------
    # TUX CONFIGURATION
    # --------------------------------------------------------------------------
    echo "
# ==============================================================================
# tmux plugins settings
# ==============================================================================

# ------------------------------------------------------------------------------
# Plugin list
# ------------------------------------------------------------------------------

set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

set -g @plugin 'tmux-plugins/tmux-copycat'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-open'

set -g @plugin 'tmux-plugins/tmux-cpu'

set -g @plugin 'tmux-plugins/tmux-sidebar'
set -g @plugin 'tmux-plugins/tmux-pain-control'

# ------------------------------------------------------------------------------
# Plugin settings
# ------------------------------------------------------------------------------

# ensure that we enable contnuum
set -g @continuum-restore 'on'

# tmux Yank settings
#set-option -g default-command 'reattach-to-user-namespace -l $SHELL'
set -g @yank_selection 'primary'
set -g @shell_mode 'vi'

# tmux cpu inidicator
set -g @cpu_low_icon 'ᚋ'
set -g @cpu_medium_icon 'ᚌ'
set -g @cpu_high_icon 'ᚍ'

set -g @cpu_low_fg_color '#[fg=#00ff00]'
set -g @cpu_medium_fg_color '#[fg=#ffff00]'
set -g @cpu_high_fg_color '#[fg=#ff0000]'

set -g @cpu_low_bg_color '#[bg=#00ff00]'
set -g @cpu_medium_bg_color '#[bg=#ffff00]'
set -g @cpu_high_bg_color '#[bg=#ff0000]'

# tmux resize
set-option -g @pane_resize '2'

# ------------------------------------------------------------------------------
# Enable Plugins
# ------------------------------------------------------------------------------

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '/home/vagrant/.dotfiles/_vendor/tpm/tpm'

" >> ${TMUX_CONFIG_FILE}

    # --------------------------------------------------------------------------
    # TUX RELOAD
    # --------------------------------------------------------------------------
    # tmux source $TMUX_CONFIG_FILE 1>&2 > /dev/null

else
    echo "Something wrong whileconfiguring tmux." >&2
    exit 1
fi

# ------------------------------------------------------------------------------
# VARIABLES UNLOAD
# ------------------------------------------------------------------------------
unset TMUX_CONFIG_FILE
