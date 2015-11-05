export ZSH=/home/gpleiss/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Completion options
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
ENABLE_CORRECTION="false"

# Update options
DISABLE_AUTO_UPDATE="false"
export UPDATE_ZSH_DAYS=13

# Path
export PATH=""
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/opt/cuda/bin"
export PATH="$PATH:/usr/bin/site_perl"
export PATH="$PATH:/usr/bin/vendor_perl"
export PATH="$PATH:/usr/bin/core_perl"

# Editor
export VISUAL='vim'
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='gvim'
fi

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source ~/.zsh_variables
