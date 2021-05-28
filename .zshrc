# ZSH Config
export ZSH="/home/tom/.oh-my-zsh"
plugins=(sudo git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
source /home/linuxbrew/.linuxbrew/opt/git-extras/share/git-extras/git-extras-completion.zsh

# Terminal theme
eval "$(starship init zsh)"

# Loads NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Load aliases
source ~/.aliases.sh
source ~/.functions.zsh

export PATH=$PATH:/usr/local/go/bin
