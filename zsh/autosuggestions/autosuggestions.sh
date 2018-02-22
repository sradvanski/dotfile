# -*- mode: sh; -*-
#
# ==============================================================================
#
# Purpose:           ZSH Autosuggestion configuration
#
# Parameters:        (none) ;
#                    ------------------------------------------------------------
#                    (none) ;
#                    ------------------------------------------------------------
#
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Script used to configure autosuggestion
#
# Revision:          Last change: 07/2017 by SR :: Intial auto suggestions
#
# ==============================================================================

# ------------------------------------------------------------------------------
# Summary list of configuration options
#
# @see: https://github.com/zsh-users/zsh-autosuggestions#configuration
# ------------------------------------------------------------------------------

# ==============================================================================
# ZSH AUTOSUGGESTION CONFIG
# ==============================================================================

# ------------------------------------------------------------------------------
# HISTORY SETTINGS
# ------------------------------------------------------------------------------

# @const boolean IST_IGNORE_ALL_DUPS - remove duplicates
# @const function ZSH_AUTOSUGGEST_STRATEGY - matching strategy
# @const string ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE - zsh styles
# @const boolean ZSH_AUTOSUGGEST_USE_ASYNC - fetch suggestion async
IST_IGNORE_ALL_DUPS=true
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
ZSH_AUTOSUGGEST_USE_ASYNC=true

# ------------------------------------------------------------------------------
# WIDGETS SETTINGS
# ------------------------------------------------------------------------------

# @const {string[]} ZSH_AUTOSUGGEST_CLEAR_WIDGETS - list of widgets to clear
# @const {string[]} ZSH_AUTOSUGGEST_ACCEPT_WIDGETS - accept widgets
# @const {string[]} ZSH_AUTOSUGGEST_EXECUTE_WIDGETS - execute widtgets
# @const {string[]} ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS - accepted widgets
# @const {string[]} ZSH_AUTOSUGGEST_IGNORE_WIDGETS - ignore widgets
#readonly ZSH_AUTOSUGGEST_CLEAR_WIDGETS=()
#readonly ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=()
#readonly ZSH_AUTOSUGGEST_EXECUTE_WIDGETS=()
#readonly ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=()
#readonly ZSH_AUTOSUGGEST_IGNORE_WIDGETS=()

# ------------------------------------------------------------------------------
# BUFFER SIZE SETTINGS
# ------------------------------------------------------------------------------

# @const int ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE - buffer size
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10
