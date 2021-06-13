#! /usr/bin/zsh
alias e=nvim
alias vi=nvim

if which exa >/dev/null 2>&1; then
  alias ls='exa'
fi

alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"
