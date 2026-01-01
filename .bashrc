#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.profile"

# If this is not an ssh connection and NO_FISH isn't defined, replace!
if [ -z "$NO_FISH" ] && [ -z "$SSH_CONNECTION" ]; then
  exec fish
fi

