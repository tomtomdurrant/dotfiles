# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# ZSH Config
bindkey -v 
if [[ `uname` == "Darwin" ]]; then
  export ZSH="$HOME/.oh-my-zsh"
else
  export ZSH="/home/tom/.oh-my-zsh"
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  source /home/linuxbrew/.linuxbrew/opt/git-extras/share/git-extras/git-extras-completion.zsh
fi
plugins=(sudo git vi-mode zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
# Terminal theme
eval "$(starship init zsh)"
function _run-cdi {
  result="$(zoxide query -i)"
  BUFFER="cd ${(q-)result}"
  zle redisplay
}
zle -N _run-cdi{,}

set -o ignoreeof


function _sessions {
 tmux neww ~/.local/bin/sessions.sh
}
zle -N _sessions
export EDITOR="nvim"
. functions.zsh
. aliases.zsh
# . bindings.zsh
bindkey "^G" _run-cdi
bindkey "^F" _sessions



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Use fnm instead of nvm 
if [ -d ~/.fnm ]
then
  eval "$(fnm env)"
else 
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

eval "$(zoxide init --cmd j zsh)"
eval $(thefuck --alias)

# pnpm
export PNPM_HOME="/Users/tom/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
