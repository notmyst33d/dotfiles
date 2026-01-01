#!/bin/bash

export EDITOR=nvim
export VIEWER=nvim
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_HOME=$HOME/Android/Sdk
export ANDROID_NDK_HOME=$HOME/Android/Sdk/ndk/28.0.13004108

export PATH="$HOME/.cache/.bun/bin:$PATH"

alias ytrip="yt-dlp --no-mtime"

stty -ixon

. "$HOME/.secrets"
. "$HOME/.cargo/env"
