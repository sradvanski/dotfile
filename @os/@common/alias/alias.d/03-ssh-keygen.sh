# -*- mode: bash; -*-
#
# ==============================================================================
#
# Purpose:           Add shh-key generator
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
# Notes:             Ensure that we can generate our key with a shorter comamnd
#
# Revision:          Last change: 07/2017 by SR :: SSH key generator
#
# ==============================================================================

# ==============================================================================
# VARIABLES
# ==============================================================================

# @var string ssh_key_byte_length - byte length
# @var string ssh_key_cypher - syper type
readonly ssh_key_byte_lngth=${1:-4096}
readonly ssh_key_cypher=${2:-'rsa'} # rsa exdsa dsa

# ==============================================================================
# ALIASES
# ==============================================================================
alias gen-ssh-key="ssh-keygen -b ${ssh_key_byte_length} -t ${ssh_key_cypher}"
