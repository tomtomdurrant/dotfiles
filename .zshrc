
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
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

export EDITOR="nvim"
if which lvim >/dev/null 2>&1; then
  export EDITOR="lvim"
fi


export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.dotnet

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Use fnm instead of nvm 
eval "$(fnm env)"

# Load aliases
source ~/.scripts/aliases.sh
source ~/.scripts/functions.zsh

eval "$(zoxide init --cmd j zsh)"


#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
