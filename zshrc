export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Path
source ~/.zsh_aliases
source ~/.zsh_variables
source ~/.zsh_path

# Completion options
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
ENABLE_CORRECTION="false"

# Update options
DISABLE_AUTO_UPDATE="false"
export UPDATE_ZSH_DAYS=13

# Editor
export VISUAL='vim'
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='gvim'
fi

# Plugins
plugins=(git tmux)
zstyle :omz:plugins:ssh-agent identities id_rsa

# Gitignore.io
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('${HOME}/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "${HOME}/miniconda3/etc/profile.d/conda.sh" ]; then
    . "${HOME}/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="${HOME}/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

