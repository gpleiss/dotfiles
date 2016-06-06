export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Path
source ~/.zsh_path

# Completion options
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
ENABLE_CORRECTION="false"

# Update options
DISABLE_AUTO_UPDATE="false"
export UPDATE_ZSH_DAYS=13

# Torch
. $HOME/torch/install/bin/torch-activate

# Virtual env
source /usr/local/bin/virtualenvwrapper.sh
export PIP_REQUIRE_VIRTUALENV=true

# Editor
export VISUAL='vim'
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='gvim'
fi

# Plugins
plugins=(git)
zstyle :omz:plugins:ssh-agent identities id_rsa

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source ~/.zsh_variables
