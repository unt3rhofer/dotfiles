export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export RANGER_LOAD_DEFAULT_RC=false
export CURRENT_TIME=$(date +"%Y-%m-%d %H:%M:%S")

