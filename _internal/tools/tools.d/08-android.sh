#!/usr/bin/env bash
# -*- mode: sh; -*-
#
# ==============================================================================
#
# Purpose:           Andorid setup
#
# Parameters:        (none) ;
#                    -----------------------------------------------------------
#                    (none) ;
#                    -----------------------------------------------------------
# Called From:       (script) executable
#
# Author:            Samir Radvanski <samir.radvanski@gmail.com>
#
# Notes:             Install andorid sdk and tools to work with
#
# Revision:          Last change: 06/2017 by SR :: Android SDK setup
#
# ==============================================================================
set -o errexit
set -o nounset
set -o pipefail
set -e

# ==============================================================================
# VARIABLES
# ==============================================================================

# ------------------------------------------------------------------------------
# VARIABLES SETUP
# ------------------------------------------------------------------------------

# @var string ANDRODID_TOOLS_URL - androdid sdk tools
# @var string CWD - working directory
# @var string ANDRODID_DIR - tools directory
ANDROID_TOOLS_URL="https://dl.google.com/android/repository/platform-tools-latest-linux.zip"
TOOLS_URL="https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip"
NDK_TOOLS_URL="https://dl.google.com/android/repository/android-ndk-r16b-linux-x86_64.zip"
ANDROID_DIR=${HOME}/.android-sdk
CWD=/tmp

# java 1.9.* ensure to enable the following section
#  -XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee

# ==============================================================================
# INSTALL LINUXBREW
# ==============================================================================
if [[ $(command -v curl) ]] && [[ $(command -v unzip) ]]; then

    # --------------------------------------------------------------------------
    # INSTALL PROCESS
    # --------------------------------------------------------------------------
    (cd ${CWD} && curl -fsSLO ${ANDROID_TOOLS_URL})
    (cd ${CWD} && unzip platform-tools-latest-linux.zip)
    (cd ${CWD} && rm -rf platform-tools-latest-linux.zip)

    (cd ${CWD} && curl -fsSLO ${TOOLS_URL})
    (cd ${CWD} && unzip sdk-tools-linux-3859397.zip)
    (cd ${CWD} && rm -rf sdk-tools-linux-3859397.zip)

    #(cd ${CWD} && curl -fsSLO ${NDK_TOOLS_URL})
    #(cd ${CWD} && unzip android-ndk-r16b-linux-x86_64.zip)

    # --------------------------------------------------------------------------
    # SETUP TOOLS
    # --------------------------------------------------------------------------
    if [[ -d ${ANDROID_DIR} ]]; then
        rm -rf ${ANDROID_DIR}
    fi

    (mkdir -p ${ANDROID_DIR})
    (mv ${CWD}/platform-tools ${ANDROID_DIR}/platform-tools)
    (mv ${CWD}/tools ${ANDROID_DIR}/tools)
    #(mv ${CWD}/android-ndk-r16b ${ANDROID_DIR}/ndk)

else

    # --------------------------------------------------------------------------
    # MESSAGE
    # --------------------------------------------------------------------------
    echo "cURL and unzip is not present on system." >&2
    exit 1

fi

# --------------------------------------------------------------------------
# VARIABLE UNLOADING
# --------------------------------------------------------------------------
unset ANDROID_TOOLS_URL
unset TOOLS_URL
unset NDK_TOOLS_URL
unset ANDROID_DIR
unset CWD
