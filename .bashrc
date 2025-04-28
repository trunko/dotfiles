#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --icons -F -H --group-directories-first --hyperlink --git'
alias ll='ls -alF'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nvim

[ -f "/home/ttrunko/.ghcup/env" ] && . "/home/ttrunko/.ghcup/env" # ghcup-env

eval "$(starship init bash)"

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

export PATH=/home/ttrunko/bin:$PATH
