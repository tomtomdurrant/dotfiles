#! /usr/bin/zsh
alias e=nvim
alias vi=nvim

if which exa >/dev/null 2>&1; then
  alias ls='exa'
fi

if which bat >/dev/null 2>&1; then
  alias cat='bat'
fi

alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# git checkout
alias fj=fzf-git-checkout

# homebrew
alias bi='brew install'
alias abi='arch -arm64 brew install'

alias bin='cd ~/.local/bin/'

alias cou='composer-update'

alias f=fzVim

fzVim ()
{
  nvim $(fzf)
}
