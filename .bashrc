#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export VISUAL=nvim
export EDITOR="$VISUAL"

export PATH=/home/ttrunko/bin:$PATH

exec fish
