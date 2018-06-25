# Zsh
ln -s zshrc ~/.zshrc
touch ~/.zsh_path
touch ~/.zsh_variables
touch ~/.zsh_aliases

# Git
ln -s gitconfig ~/.gitconfig

# Tmux
ln -s tmux ~/.tmux
ln -s tmux/tmux.conf ~/.tmux.conf

# Jupyter
ln -s jupyter ~/.jupyter

# Matplotlib
ln -s matplotlib ~/.matplotlib

# Fonts
if [ -d "$HOME/Library/Fonts/" ]; then
  cp fonts/* $HOME/Library/Fonts
fi
