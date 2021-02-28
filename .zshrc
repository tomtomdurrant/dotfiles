# ZSH Config
export ZSH="/home/tom/.oh-my-zsh"
plugins=(sudo git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
source /home/linuxbrew/.linuxbrew/opt/git-extras/share/git-extras/git-extras-completion.zsh

# Terminal theme
eval "$(starship init zsh)"

# Loads NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Check if font supports icons
checkFont() {
  echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"
}

# Load aliases
source ~/.aliases.sh
export PATH=$PATH:/usr/local/go/bin

# This syntax is specific to zsh
function how_in() {
  where="$1"
  url=https://cht.sh/$where/"$@[2,-1]"
  echo "Searching ${url}"
  curl ${url}
}
