# ZSH Config
bindkey -v 
if [[ `uname` == "Darwin" ]]; then
  export ZSH="$HOME/.oh-my-zsh"
else
  export ZSH="/home/tom/.oh-my-zsh"
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  source /home/linuxbrew/.linuxbrew/opt/git-extras/share/git-extras/git-extras-completion.zsh
fi
plugins=(sudo git vi-mode zsh-autosuggestions zsh-autocomplete zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
# Terminal theme
eval "$(starship init zsh)"

export EDITOR="nvim"

export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.dotnet
zstyle ':autocomplete:*' min-delay 0.5  # float


# Use fnm instead of nvm 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fnm env)"

# Load aliases
source ~/.aliases.sh
source ~/.functions.zsh
