# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Powerlevel9k configuration
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#
# Called From:       (script) sourced
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Script used to modify powerlevl9k prompt
#
# Revision:          Last change: 07/2017 by SR :: Initial powerlevel9k configuration
#
# ==============================================================================

# ==============================================================================
# PROMPT SEGMENTS
# ==============================================================================

# ------------------------------------------------------------------------------
# For more details on segments take a look at following URL
#
# @see: https://github.com/bhilburn/powerlevel9k/blob/master/README.md#available-prompt-segments
# ------------------------------------------------------------------------------

# ==============================================================================
# PROMPT CONFIGURATION
# ==============================================================================

# ------------------------------------------------------------------------------
# PROMPT SEGMENT SETTINGS
# ------------------------------------------------------------------------------

# @const string POWERLEVEL9K_MODE - prompt mode configuration
# @const string POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR - left segment separator
# @const string POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR - right segment separator
# @const function[] POWERLEVEL9K_LEFT_PROMPT_ELEMENTS - left prompt modules
# @const function[] POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS - right prompt modules
readonly POWERLEVEL9K_MODE='awesome-fontconfig'
readonly POWERLEVEL9K_PROMPT_ON_NEWLINE=true
readonly POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
readonly POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='↱ '

readonly POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B0'
readonly POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B2'
readonly POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B0'
readonly POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0B2'

readonly POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
readonly POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs rbenv pyenv nvm load ram battery time)

# ------------------------------------------------------------------------------
# OS ICON SEGMENT
# ------------------------------------------------------------------------------

# @const string POWERLEVEL9K_OS_ICON_BACKGROUND - segment backgorund color
# @const string POWERLEVEL9K_OS_ICON_FOREGROUND - segment foreground color
readonly POWERLEVEL9K_OS_ICON_BACKGROUND='237'
readonly POWERLEVEL9K_OS_ICON_FOREGROUND='250'

# ------------------------------------------------------------------------------
# CONTEXT SETTINGS
# ------------------------------------------------------------------------------

# @const string DEFAULT_USER - default user
# @const boolean POWERLEVEL9K_ALWAYS_SHOW_CONTEXT - display context
# @const boolean POWERLEVEL9K_ALWAYS_SHOW_USER - display default user
# @const string POWERLEVEL9K_CONTEXT_TEMPLATE - context display format
readonly DEFAULT_USER="sam"
readonly POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
readonly POWERLEVEL9K_ALWAYS_SHOW_USER=false
readonly POWERLEVEL9K_CONTEXT_BACKGROUND='237'
readonly POWERLEVEL9K_CONTEXT_TEMPLATE="%F{220}\uF309% %F{248}  %n"

# ------------------------------------------------------------------------------
# DIR SEGMENT
# ------------------------------------------------------------------------------

# @const string POWERLEVEL9K_HOME_ICON - home icon
# @const string POWERLEVEL9K_HOME_SUB_ICON - subdirectory icon
# @const string POWERLEVEL9K_FOLDER_ICON - directory icon
# @const int POWERLEVEL9K_SHORTEN_DIR_LENGTH - shorten directory length
# @const string POWERLEVEL9K_SHORTEN_STRATEGY - shorten startegy
# @const string POWERLEVEL9K_SHORTEN_DELIMITER - directory shorten delimiter
# @const string POWERLEVEL9K_DIR_PATH_SEPARATOR - string format for path separator
# @const string POWERLEVEL9K_HOME_FOLDER_ABBREVIATION - home directory short name
readonly POWERLEVEL9K_HOME_ICON='\uF015'
readonly POWERLEVEL9K_HOME_SUB_ICON='\uE613'
readonly POWERLEVEL9K_FOLDER_ICON='\uE613'
readonly POWERLEVEL9K_FOLDER_BACKGROUND='255'
readonly POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
readonly POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_package_name" # truncate_middle truncate_from_right truncate_with_package_name truncate_with_folder_marker
readonly POWERLEVEL9K_SHORTEN_DELIMITER=''
readonly POWERLEVEL9K_HOME_FOLDER_ABBREVIATION='~'


# ------------------------------------------------------------------------------
# BATTERY SETTINGS
# ------------------------------------------------------------------------------

# @const string POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND - color
# @const string POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND - color
# @const string POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND - color
# @const string POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND - color
# @const string POWERLEVEL9K_BATTERY_LOW_BACKGROUND - color
# @const string POWERLEVEL9K_BATTERY_LOW_FOREGROUND - color
# @const string POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND - color
# @const string POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND - color
# @const string POWERLEVEL9K_BATTERY_ICON - icon
# @const string POWERLEVEL9K_BATTERY_LOW_THRESHOLD - low trashold
# @const string POWERLEVEL9K_BATTERY_VERBOSE - additional info
readonly POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='237'
readonly POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='227'
readonly POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='237'
readonly POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='155'
readonly POWERLEVEL9K_BATTERY_LOW_BACKGROUND='237'
readonly POWERLEVEL9K_BATTERY_LOW_FOREGROUND='197'
readonly POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='237'
readonly POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='242'
readonly POWERLEVEL9K_BATTERY_ICON='\uF240'
readonly POWERLEVEL9K_BATTERY_LOW_THRESHOLD=5
readonly POWERLEVEL9K_BATTERY_VERBOSE=false

# ------------------------------------------------------------------------------
# RAM SETTINGS
# ------------------------------------------------------------------------------

# @const string POWERLEVEL9K_RAM_ELEMENTS - ram used
# @const string POWERLEVEL9K_RAM_BACKGROUND - ram background color
# @const string POWERLEVEL9K_RAM_FOREGROUND - ram froueground color
# @const string POWERELEVL9K_RAM_ICON - ram icon
readonly POWERLEVEL9K_RAM_ELEMENTS='Both' #swap_used ram_free
readonly POWERLEVEL9K_RAM_BACKGROUND='024'
readonly POWERLEVEL9K_RAM_FOREGROUND='252'
readonly POWERLEVEL9K_RAM_ICON=''

# ------------------------------------------------------------------------------
# TIMER
# ------------------------------------------------------------------------------

# @const string POWERLEVEL9K_TIME_FORMAT - time display string
# @const string POWERLEVEL9K_TIME_BACKGROUND - background color of this segment
readonly POWERLEVEL9K_TIME_FORMAT="%F{250}%D{%H:%M:%S}% %F{220}  \uF43A"
readonly POWERLEVEL9K_TIME_BACKGROUND='241'
