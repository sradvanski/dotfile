#!/usr/bin/env bash
#
# ===============================================================================
#
# Purpose:           Assets setup
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@365squared.com>
#
# Notes:             Script used to install fonts on our system
#
# Revision:          Last change: 06/2017 by SR :: Fonts setup
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
# VARIABLES LOADING
# ------------------------------------------------------------------------------
source ${HOME}/.dotfiles/_internal/variables/variables.sh

# ------------------------------------------------------------------------------
# VARIABLES DEFINITION
# ------------------------------------------------------------------------------

# @const string FONT_PATH - current working dir
# @const string FONT_NAME - font names list
FONT_PATH=${DOT_DOTFILES}/_assets/assets.d/00-fonts
FONT_NAME=${1:-' '}

# ------------------------------------------------------------------------------
# VARS
# ------------------------------------------------------------------------------

# @var string[] fcundFonts - fonts found list
# @var string fontDefaultDir - default fonts directory
foundFonts="find \"$FONT_PATH\" \( -name '$FONT_NAME*.[o,t]tf' -or -name '$FONT_NAME*.pcf.gz' \) -type f -print0"
fontDefaultDir=""

if [[ `uname` == 'Darwin' ]]; then
    fontDefaultDir="$HOME/Library/Fonts"
else
    fontDefaultDir="/usr/share/fonts"
    sudo mkdir -p $fontDefaultDir
fi

# ==============================================================================
# SETUP
# ==============================================================================

 eval $foundFonts | sudo xargs -0 -n1 -I % cp -f "%" "$fontDefaultDir/"

 if [[ $(command -v fc-cache) ]]; then
    echo "Resetting font cache, this may take a moment..."
    sudo fc-cache -f $fontDefaultDir
fi

# ------------------------------------------------------------------------------
# VARIABLE UNLOADING
# ------------------------------------------------------------------------------
unset FONT_OATH
unset FONT_NAME
unset foundFonts
unset fontDefaultDir
