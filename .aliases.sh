#! /usr/bin/zsh
alias e=nvim
alias vi=nvim

if which exa >/dev/null 2>&1; then
  alias ls='exa'
else
  alias ls='ls --color=auto'
fi

