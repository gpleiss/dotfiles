# Make sure we have a config directory
if [ ! -d $HOME/.config ]; then
  mkdir .config
fi

# Zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s zshrc ~/.zshrc
echo "export PATH=${PATH}" > ~/.zsh_path
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
ln -s matplotlib ~/.config/matplotlib

# Neovim
ln -s nvim ~/.config/nvim

# Pypi
ln -s pypirc ~/.pypirc

# Fonts
if [ -d "$HOME/Library/Fonts/" ]; then
  cp fonts/* $HOME/Library/Fonts
fi
