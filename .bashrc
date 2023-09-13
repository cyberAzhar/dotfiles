# Azhar Arch .bashrc

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# some color variables to use

	RESET=$'\e[0m'  # reset
    GREY=$'\e[90m'  # grey
    RED=$'\e[91m'   # red
    GREN=$'\e[92m'  # green
    YELW=$'\e[93m'  # yellow
    BLUE=$'\e[94m'  # blue
    MGNT=$'\e[95m'  # magenta
    CYAN=$'\e[96m'  # cyan
    WHIT=$'\e[97m'  # white
    BOLD=$'\e[1m'   # bold
    INV=$'\e[7m'    # invert
    BLNK=$'\e[5m'   # blink

alias ls='ls --color=auto'


PS1='\n\[${BOLD}\]\[${RED}\]\u@\h \[${CYAN}\]\w \$ '
PS0='\[${RESET}\]\n'

# HISTCONTROL commands
HISTCONTROL=ignorespace:ignoredups:erasedups
# History length and file size
HISTSIZE=5000
HISTFILESIZE=10000

# append to the history file, don't overwrite it
shopt -s histappend

# Zsh can invoke the manual for the command preceding the cursor by pressing Alt+h.
# A similar behaviour is obtained in Bash using this Readline bind: 
run-help() { help "$READLINE_LINE" 2>/dev/null || man "$READLINE_LINE"; }
bind -m vi-insert -x '"\eh": run-help'
bind -m emacs -x     '"\eh": run-help'

# command not found function by searching official repositories
source /usr/share/doc/pkgfile/command-not-found.bash

# Auto cd when entering a path
shopt -s autocd

# Line wrap on window resize
shopt -s checkwinsize

source ~/.bash_aliases

