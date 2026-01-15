# Make sure we have a config directory
if [ ! -d $HOME/.config ]; then
  mkdir .config
fi

# Get folder of this file
DOTFILES_DIR="$(cd "$(dirname "$(readlink -f "$0")")" && pwd)"

# Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi
[ ! -e ~/.zshrc ] && ln -s $DOTFILES_DIR/zshrc ~/.zshrc
echo "export PATH=${PATH}" > ~/.zsh_path
touch ~/.zsh_variables
touch ~/.zsh_aliases

# Git
[ ! -e ~/.gitconfig ] && ln -s $DOTFILES_DIR/gitconfig ~/.gitconfig
[ ! -e ~/.config/git ] && ln -s $DOTFILES_DIR/git ~/.config/git

# Github
[ ! -e ~/.config/gh ] && ln -s $DOTFILES_DIR/gh ~/.config/gh

# Tmux
[ ! -e ~/.tmux ] && ln -s $DOTFILES_DIR/tmux ~/.tmux
[ ! -e ~/.tmux.conf ] && ln -s $DOTFILES_DIR/tmux/tmux.conf ~/.tmux.conf

# Jupyter
[ ! -e ~/.jupyter ] && ln -s $DOTFILES_DIR/jupyter ~/.jupyter

# Matplotlib
[ ! -e ~/.config/matplotlib ] && ln -s $DOTFILES_DIR/matplotlib ~/.config/matplotlib

# Neovim
[ ! -e ~/.config/nvim ] && ln -s $DOTFILES_DIR/nvim ~/.config/nvim

# Pypi
[ ! -e ~/.pypirc ] && ln -s $DOTFILES_DIR/pypirc ~/.pypirc

# Fonts
if [ -d "$HOME/Library/Fonts/" ]; then
  cp fonts/* $HOME/Library/Fonts
fi

# Wandb
[ ! -e ~/.config/wandb ] && ln -s $DOTFILES_DIR/wandb ~/.config/wandb
